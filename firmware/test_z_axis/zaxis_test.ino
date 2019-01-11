// **********************************************************************************

// Copyright (c) 2018 JLNKTECH Consulting, LLC   All Rights Reserved.
//                    JLNKTECH Consulting, LLC   Proprietary
// ------------------------------------------------------------------------------
// File       : zaxisTest.ino
// Purpose    : test various stepper motors
// Author     : James Garrison
// Started    : 25 December 2018
// Description:
//               D6      electroMagnet

//               D7      limit switch
//               D8      stepper1
//               D9      stepper2
//               D10     stepper3
//               D12     stepper4
//
//               A0      distance sensor
// **********************************************************************************
//
// library cheapStepper has been modified to support homing switch
// during movement up, the limit switch is checked. Default pin 7 uses
// internal pullup and when contacted (logic level low (0)) home has been reached.
// after homing, the software will move away 500 steps.
//
// also added motor off, so that the motor does not overheat. Being geared, don't need to
// worry about movement.
//
// The initial unipolar stepper motor is 28BYJ-48, which has 4096 steps-per-revolution.
// It is an 64:1 ratio geared motor.
//
// Other motors will require adjusting the steps-per-revolution and rpm.
//
//  Motor P/N               Steps/revol       Angle       Ratio       Size (mm)   RPM
//   28BYJ-48                   4096          0.088       64:1         35          15
//  290-028 (24BYJ-48)          1600          5.625       25:1         31         TBD
//  108990003                   2048          0.176       32:1         31         TBD
//     858                       513          0.702       16:1         35          10
//
//
//   sonar using HC-SR04
// **********************************************************************************
// Revision History
// 12-25-18  : Version 1.0 - Initial
//
// 12-28-18  : using UE-1327 12V electro magnet
// 12-28-18  : rpm=15, stepPRv=4096, takes 3300 steps = 1 inch, using 28BYJ-48
// 01-02-19  : rpm=10, stepPRv=513,  takes  800 steps = 1 inch, using 858
// 01-02-19  : rpm=10, stepPRv=1600, takes  xxx steps = 1 inch, using 24BYJ-48-25
//
// 01-04-19  : using WF-P25/50 5V electro magnet
//           : to travel 1 inch, steps = 800, using 858 stepper motor
//           : test setup panel,
//           :      king    pickup at steps=1460
//           :      queen   pickup at steps=1750
//           :      bishop  pickup at steps=2000
//           :      knight  pickup at steps=2100
//           :      rook    pickup at steps=2325
//           :      pawn    pickup at steps=2540
//
// 01-06-19  : add sharp GP2Y0A51SK0F distance sensor for testing
//           : move down about 0.75in and measure object
// **********************************************************************************
#include <Cmd.h>
#include <CheapStepper.h>
#include <EEPROM.h>
#include <TrueRandom.h>
#include <avr/wdt.h>
#include <avr/boot.h>

// distance measurement
#include <SharpDistSensor.h>
#include "Statistic.h"

// default settings
char boardName[32]        = "chessRobot";      // do not change
const long magicNumber    = 0x67FB;            // magic number;
char firmwareVersion[10]  = "1.0.0";           // firmware, change as changes are made and release
char boardVersion[10]     = "A/A";             // changes only when board is changed ( board revision / schematic revision )
char boardDate[11]        = "12/25/2018";      // date of last change
char boardSerial[7]       = "000000";          // default, do not change

// board UUID address
// auto generated on-board
byte uuid[16] = {
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

// eeprom address locations for factory data
const int addr_serial   = 0;
const int addr_bversion = 10;
const int addr_fversion = 20;
const int addr_date     = 40;
const int addr_mac      = 60;
const int addr_uuid     = 90;

// eeprom size ( ATMega328P )
const int EEPROM_MIN_ADDR = 0;
const int EEPROM_MAX_ADDR = 1023;

//             (sensePin, in1, in2, in3, in4)
CheapStepper stepper(7, 8, 9, 10, 12);

// electro magnet switch
#define electroMag 6

boolean dirUp   = true;
boolean dirDown = false;

//int stepsPerRev = 4096;  // 28BYI-48
//int rpm         = 15;

int stepsPerRev = 513;     // 858
int rpm         = 10;

//int stepsPerRev = 2048;     // 108990003
//int rpm         = 10;

//int stepsPerRev = 64;  // 24BYJ-48
//int rpm         = 10;

// distance sensor
#define sensorPin A0

// Window size of the median filter (odd number, 1 = no filtering)
const byte medianFilterWindowSize = 5;

// Create an object instance of the SharpDistSensor class
SharpDistSensor sensor(sensorPin, medianFilterWindowSize);

Statistic stats;
//
// --------------------------------------- Bootloader ------------------------------------------------------------------------
//
// *** Jumping To The Bootloader ***
//
// Shutting Off Peripherals and Interrupts
// Before jumping to the bootloader, you MUST completely disable all interrupt sources and any peripherals you have activated.
// If the watchdog timer has been activated, it must be turned off.
//
// The USB must be disabled. When the UDCON register is written to 1, the attach resistor which signals the presence of a USB device
// is disconnected. Within 5 ms, the PC should recognize that no device is connected (even though the cable is still plugged in). A 5
// ms delay is advisable after disabling the USB. When the bootloader begins, it will enable and reconnect the USB, so it is importan

// to give the PC time to recognize the disconnect.
void enableBootLoader()
{
  cli();
  // disable watchdog, if enabled
  // disable all peripherals

  // UDCON = 1;
  // USBCON = (1<<FRZCLK);  // disable USB
  // UCSR1B = 0;

  _delay_ms(5);

  EIMSK  = 0;
  PCICR  = 0;
  SPCR   = 0;
  ACSR   = 0;
  EECR   = 0;
  ADCSRA = 0;
  TIMSK0 = 0;
  TIMSK1 = 0;
  TIMSK2 = 0;
  // TIMSK3 = 0;
  // UCSR1B = 0;
  TWCR   = 0;
  //  DDRA   = 0;
  DDRB   = 0;
  DDRC   = 0;
  DDRD   = 0;
  //  DDRE   = 0;
  //  DDRF   = 0;
  //  PORTA  = 0;
  PORTB  = 0;
  PORTC  = 0;
  PORTD  = 0;
  //  PORTE  = 0;
  //  PORTF  = 0;

  asm volatile("jmp 0x1E000");
}

// software reset
void restartCode()
{
  Serial.println("Rebooting...");
  delay(500);

  cli();
  wdt_disable();

  EIMSK  = 0;
  PCICR  = 0;
  SPCR   = 0;
  ACSR   = 0;
  EECR   = 0;
  ADCSRA = 0;
  TIMSK0 = 0;
  TIMSK1 = 0;
  TIMSK2 = 0;
  //  TIMSK3 = 0;
  //  UCSR1B = 0;
  TWCR   = 0;
  //  DDRA   = 0;
  DDRB   = 0;
  DDRC   = 0;
  DDRD   = 0;
  //  DDRE   = 0;
  //  DDRF   = 0;
  //  PORTA  = 0;
  PORTB  = 0;
  PORTC  = 0;
  PORTD  = 0;
  //  PORTE  = 0;
  //  PORTF  = 0;

  void(* resetFunc) (void) = 0; //declare reset function @ address 0
  resetFunc();  //call reset

  while (1)
    delay(1000);
}

//
//==========================EEProm Section=====================================
//
// erase eeprom
void eepromEraseAll()
{
  byte b = 0xFF;
  int i;

  for ( i = 0; i <= EEPROM_MAX_ADDR; i++ ) {
    eeprom_write_byte( (unsigned char *) i, b );
  }
}

// Returns true if the address is between the
// minimum and maximum allowed values,
// false otherwise.
//
// This function is used by the other, higher-level functions
// to prevent bugs and runtime errors due to invalid addresses.
boolean eeprom_is_addr_ok( int addr )
{
  return ( ( addr >= EEPROM_MIN_ADDR ) && (addr <= EEPROM_MAX_ADDR) );
}

// Writes a sequence of bytes to eeprom starting at the specified address.
// Returns true if the whole array is successfully written.
// Returns false if the start or end addresses aren't between
// the minimum and maximum allowed values.
boolean eeprom_writeBytes( int startAddr, const byte* array, int numBytes )
{
  // counter
  int i;

  // both first byte and last byte addresses must fall within
  // the allowed range
  if ( !eeprom_is_addr_ok(startAddr) || !eeprom_is_addr_ok(startAddr + numBytes) ) {
    return false;
  }

  for ( i = 0; i < numBytes; i++ ) {
    eeprom_write_byte( (unsigned char *) startAddr + i, array[i] );
  }

  return true;
}

// Reads the specified number of bytes from the specified address into the provided buffer.
// Returns true if all the bytes are successfully read.
// Returns false if the star or end addresses aren't between
// the minimum and maximum allowed values.
// When returning false, the provided array is untouched.
//
// Note: the caller must ensure that array[] has enough space
// to store at most numBytes bytes.
boolean eeprom_readBytes( int startAddr, byte array[], int numBytes )
{
  int i;

  // both first byte and last byte addresses must fall within
  // the allowed range
  if ( !eeprom_is_addr_ok( startAddr ) || !eeprom_is_addr_ok( startAddr + numBytes ) ) {
    return false;
  }

  for ( i = 0; i < numBytes; i++ ) {
    array[i] = eeprom_read_byte( (unsigned char *) startAddr + i );
  }

  return true;
}

// Writes an int variable at the specified address.
// Returns true if the variable value is successfully written.
// Returns false if the specified address is outside the
// allowed range or too close to the maximum value
// to store all of the bytes (an int variable requires
// more than one byte).
boolean eeprom_writeInt( int addr, int value )
{
  byte *ptr;

  ptr = ( byte* )&value;
  return eeprom_writeBytes( addr, ptr, sizeof( value ) );
}

// Reads an integer value at the specified address.
// Returns true if the variable is successfully read.
// Returns false if the specified address is outside the
// allowed range or too close to the maximum vlaue
// to hold all of the bytes (an int variable requires
// more than one byte).
//
boolean eeprom_readInt( int addr, int* value )
{
  return eeprom_readBytes( addr, ( byte* )value, sizeof( int ) );
}

// Writes a string starting at the specified address.
// Returns true if the whole string is successfully written.
// Returns false if the address of one or more bytes
// fall outside the allowed range.
// If false is returned, nothing gets written to the eeprom.
boolean eeprom_writeString( int addr, const char* string )
{
  // actual number of bytes to be written
  int numBytes;

  // we'll need to write the string contents
  // plus the string terminator byte (0x00)
  numBytes = strlen( string ) + 1;

  return eeprom_writeBytes( addr, ( const byte* )string, numBytes );
}

// Reads a string starting from the specified address.
// Returns true if at least one byte (even only the
// string terminator one) is read.
// Returns false if the start address falls outside
// or declare buffer size is zero.
// the allowed range.
// The reading might stop for several reasons:
// - no more space in the provided buffer
// - last eeprom address reached
// - string terminator byte (0x00) encountered.
// The last condition is what should normally occur.
boolean eeprom_readString( int addr, char* buffer, int bufSize )
{
  // byte read from eeprom
  byte ch;

  // number of bytes read so far
  int bytesRead;

  // check start address
  if ( !eeprom_is_addr_ok( addr ) ) {
    return false;
  }

  // how can we store bytes in an empty buffer ?
  if ( bufSize == 0 ) {
    return false;
  }

  // is there is room for the string terminator only,
  // no reason to go further
  if ( bufSize == 1 ) {
    buffer[0] = 0;
    return true;
  }

  // initialize byte counter
  bytesRead = 0;

  // read next byte from eeprom
  ch = eeprom_read_byte( (unsigned char *) addr + bytesRead );

  // store it into the user buffer
  buffer[bytesRead] = ch;

  // increment byte counter
  bytesRead++;

  // stop conditions:
  // - the character just read is the string terminator one (0x00)
  // - we have filled the user buffer
  // - we have reached the last eeprom address
  while ( ( ch != 0x00 ) && ( bytesRead < bufSize ) && ( ( addr + bytesRead ) <= EEPROM_MAX_ADDR ) ) {
    // if no stop condition is met, read the next byte from eeprom
    ch = eeprom_read_byte( (unsigned char *) addr + bytesRead );

    // store it into the user buffer
    buffer[bytesRead] = ch;

    // increment byte counter
    bytesRead++;
  }

  // make sure the user buffer has a string terminator
  // (0x00) as its last byte
  if ( ( ch != 0x00 ) && ( bytesRead >= 1 ) ) {
    buffer[bytesRead - 1] = 0;
  }

  return true;
}

// Dump eeprom memory contents over serial port in tabular form.
// Each printed row shows the value of bytesPerRow bytes
void eepromSerialDumpTable()
{
  int bytesPerRow = 16;
  int i;
  int j;
  byte b;
  static char buf[10];

  // initialize row counter
  j = 0;

  // go from first to last eeprom address
  for ( i = 0; i <= EEPROM_MAX_ADDR; i++ ) {

    // if this is the first byte of the row,
    // start row by printing the byte address
    if ( j == 0 ) {
      sprintf( buf, "%03X: ", i );
      // serial
      Serial.print( buf );
    }

    // read current byte from eeprom
    b = eeprom_read_byte((unsigned char *) i);

    // write byte in hex form
    sprintf( buf, "%02X ", b );

    // increment row counter
    j++;

    // if this is the last byte of the row,
    // reset row counter and use println()
    // to start a new line
    if ( j == bytesPerRow ) {
      j = 0;

      // serial
      Serial.println( buf );
    }
    // else just print the hex value with print()
    else {
      // serial
      Serial.print( buf );
    }
  }

  returnResponse();
}

// read magicNumber, requires 2 bytes (long)
// lets us know that the board is configured
long readMagic()
{
  byte hiByte;
  byte loByte;

  hiByte = EEPROM.read( 4090 );
  loByte = EEPROM.read( 4091 );
  return ( hiByte << 8 ) + loByte;
}

// write magicNumber, uses 2 bytes (long)
// use for configuration setup
void writeMagic()
{
  byte hiByte;
  byte loByte;

  loByte = byte( magicNumber );
  hiByte = byte( magicNumber >> 8 );

  EEPROM.write( 4090, hiByte );
  EEPROM.write( 4091, loByte );
}

// read integer value
int eeReadInt(int address)
{
  return ( EEPROM.read( address) << 8 ) + EEPROM.read( address + 1 );
}

// write integer value
void eeWriteInt(int address, int value)
{
  EEPROM.write( address, (byte) (value >> 8) & 0xFF);
  EEPROM.write( address + 1, (byte) value & 0xFF );
}

//
//==========================Board Info Section=====================================
//
// factory default settings
void setFactoryDefaultSettings()
{
  static char buf[10];

  // board date
  Serial.println( F( "Writing date..." ) );
  eeprom_writeString( addr_date, boardDate );

  // board serial
  Serial.println( F( "Writing serial..." ) );
  eeprom_writeString( addr_serial, boardSerial );

  // firmware version
  Serial.println( F( "Writing firmware version..." ) );
  eeprom_writeString( addr_fversion, firmwareVersion );

  // board version
  Serial.println( F( "Writing board version..." ) );
  eeprom_writeString( addr_bversion, boardVersion );

  returnResponse();
}

// set factory settings
void setFactorySettings( int arg_cnt, char **args )
{
  int strNum;

  // board date
  if ( strcmp( args[2], "date" ) == 0 ) {
    eeprom_writeString( addr_date, args[3] );
  }

  // board serial
  if ( strcmp( args[2], "serial" ) == 0 ) {
    eeprom_writeString( addr_serial, args[3] );
  }

  // board version
  if ( strcmp( args[2], "boardVersion" ) == 0 ) {
    eeprom_writeString( addr_bversion, args[3] );
  }

  // firmware version
  if ( strcmp( args[2], "firmwareVersion" ) == 0 ) {
    eeprom_writeString( addr_fversion, args[3] );
  }

  // board uuid address
  if ( strcmp( args[2], "uuidAddress" ) == 0 ) {
    uuid[0] = cmdStr2Num( args[3], 10 );
    uuid[1] = cmdStr2Num( args[4], 10 );
    uuid[2] = cmdStr2Num( args[5], 10 );
    uuid[3] = cmdStr2Num( args[6], 10 );
    uuid[4] = cmdStr2Num( args[7], 10 );
    uuid[5] = cmdStr2Num( args[8], 10 );
    uuid[6] = cmdStr2Num( args[9], 10 );
    uuid[7] = cmdStr2Num( args[10], 10 );
    uuid[8] = cmdStr2Num( args[11], 10 );
    uuid[9] = cmdStr2Num( args[12], 10 );
    uuid[10] = cmdStr2Num( args[13], 10 );
    uuid[11] = cmdStr2Num( args[14], 10 );
    uuid[12] = cmdStr2Num( args[15], 10 );
    uuid[13] = cmdStr2Num( args[16], 10 );
    uuid[14] = cmdStr2Num( args[17], 10 );
    uuid[15] = cmdStr2Num( args[18], 10 );
    eeprom_writeBytes(addr_uuid, uuid, 16);
  }

  returnResponse();
}

// get factory settings
void getFactorySettings()
{
  // board date
  eeprom_readString( addr_date, boardDate, sizeof( boardDate ) );

  // board serial
  eeprom_readString( addr_serial, boardSerial, sizeof( boardSerial ) );

  // firmware version
  eeprom_readString( addr_fversion, firmwareVersion, sizeof( firmwareVersion ) );

  // board version
  eeprom_readString( addr_bversion, boardVersion, sizeof( boardVersion ) );

  // board uuid address
  eeprom_readBytes(addr_uuid, uuid, 16);
}

//
//==========================Routines Section=====================================
void returnResponse()
{
  // serial
  Serial.println(F("ok"));
}

// Helper function for free ram.
int freeRam()
{
  extern unsigned int __heap_start;
  extern void *__brkval;

  int free_memory;
  int stack_here;

  if (__brkval == 0)
    free_memory = (int) &stack_here - (int) &__heap_start;
  else
    free_memory = (int) &stack_here - (int) __brkval;

  return (free_memory);
}

// return the configuration
void displayMessage()
{
  Serial.print(boardName);
  Serial.print(F(" "));
  Serial.print(boardVersion);
  Serial.print(F(" ("));
  Serial.print( firmwareVersion );
  Serial.print(F(")  ("));
  Serial.print(boardDate);
  Serial.println(F(")"));

  returnResponse();
}

// display date
void printFSDate()
{
  Serial.println(boardDate);
  returnResponse();
}

// print out the factory settings
void printFSBoardVersion()
{
  Serial.println(boardVersion);
  returnResponse();
}

// print out the factory settings
void printFSFirmwareVersion()
{
  Serial.println(firmwareVersion);
  returnResponse();
}

// display name
void printFSBoardName()
{
  Serial.println(boardName);
  returnResponse();
}

// display serial
void printFSSerial()
{
  Serial.println(boardSerial);
  returnResponse();
}

// pretty print out the free ram
void AvailableRAM(int arg_cnt, char **args)
{
  Serial.print(F("Available RAM is "));
  Serial.println(freeRam());

  returnResponse();
}

// pretty print
void printHex(byte number)
{
  int topDigit = number >> 4;
  int bottomDigit = number & 0x0f;

  // Print high hex digit
  Serial.print("0123456789ABCDEF"[topDigit]);
  // Low hex digit
  Serial.print("0123456789ABCDEF"[bottomDigit]);
}

// print out the UUID
void printUUID()
{
  int i;
  for ( i = 0; i < 16; i++ ) {
    if ( i == 4 ) Serial.print(F("-"));
    if ( i == 6 ) Serial.print(F("-"));
    if ( i == 8 ) Serial.print(F("-"));
    if ( i == 10 ) Serial.print(F("-"));

    printHex(uuid[i]);
  }

  Serial.println(F(""));
  returnResponse();
}

// internally generate uuid address
void genUUIDAddress()
{
  Serial.println(F("Generating random numbers..."));
  TrueRandom.uuid( uuid );
  Serial.print( F("uuid Address is "));
  printUUID();
  Serial.println( F("Writing uuid..."));
  eeprom_writeBytes(addr_uuid, uuid, 16);

  returnResponse();
}

// display version
void versionDisplay(int arg_cnt, char **args)
{
  displayMessage();
}

// system commands
void sysCommand(int arg_cnt, char **args)
{
  if (arg_cnt > 1) {
    // commands
    if ( strcmp( args[1], "setFS" ) == 0 ) {
      setFactorySettings( arg_cnt, args );
    } else if ( strcmp( args[1], "genUUID" ) == 0 ) {
      genUUIDAddress();
    } else if ( strcmp( args[1], "setFDS" ) == 0 ) {
      setFactoryDefaultSettings();
    } else if ( strcmp( args[1], "refreshFS" ) == 0 ) {
      getFactorySettings();
    } else if ( strcmp( args[1], "getFSUUID" ) == 0 ) {
      printUUID();
    } else if ( strcmp( args[1], "getFSSerial" ) == 0 ) {
      printFSSerial();
    } else if ( strcmp( args[1], "getFSBoardName" ) == 0 ) {
      printFSBoardName();
    } else if ( strcmp( args[1], "getFSBoardVersion" ) == 0 ) {
      printFSBoardVersion();
    } else if ( strcmp( args[1], "getFSFirmwareVersion" ) == 0 ) {
      printFSFirmwareVersion();
    } else if ( strcmp( args[1], "getFSDate" ) == 0 ) {
      printFSDate();
    } else if ( strcmp( args[1], "eraseEE" ) == 0 ) {
      eepromEraseAll();
    } else if ( strcmp( args[1], "writeMagNum" ) == 0 ) {
      writeMagic();
    } else if ( strcmp( args[1], "dumpEE" ) == 0 ) {
      eepromSerialDumpTable();
    } else {
      Serial.println(F("Unknown command given"));
    }
  } else {
    Serial.println(F("Unknown sys command given"));
  }
}

//
//==========================Stepper Motion Section=====================================
//
// return home
void homePos(int arg_cnt, char **args)
{
  int steps = 20000;

  stepper.move(dirUp, steps);
}

// turn motor off
void motorOff(int arg_cnt, char **args)
{
  stepper.motorOff();
}

// move up by x steps
void moveUp(int arg_cnt, char **args)
{
  int steps;

  if (arg_cnt > 1) {
    steps = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper steps"));
    Serial.print(F("from 0 to "));
    Serial.print(stepsPerRev);
    Serial.println(F(")"));
    return;
  }

  stepper.move(dirUp, steps);
}

// move down by x steps
void moveDown(int arg_cnt, char **args)
{
  int steps;

  if (arg_cnt > 1) {
    steps = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper steps"));
    Serial.print(F("from 0 to "));
    Serial.print(stepsPerRev);
    Serial.println(F(")"));
    return;
  }

  stepper.move(dirDown, steps);
}

// move up by x steps, tracking steps
void moveToUp(int arg_cnt, char **args)
{
  int steps;

  if (arg_cnt > 1) {
    steps = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper steps"));
    Serial.print(F("from 0 to "));
    Serial.print(stepsPerRev);
    Serial.println(F(")"));
    return;
  }

  stepper.moveTo(dirUp, steps);
}

// move down by x steps, tracking steps
void moveToDown(int arg_cnt, char **args)
{
  int steps;

  if (arg_cnt > 1) {
    steps = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper steps"));
    Serial.print(F("from 0 to "));
    Serial.print(stepsPerRev);
    Serial.println(F(")"));
    return;
  }

  stepper.moveTo(dirDown, steps);
}

// move up by degrees
void moveUpDegrees(int arg_cnt, char **args)
{
  int degree;

  if (arg_cnt > 1) {
    degree = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper degree (0-360)"));
    return;
  }

  stepper.moveDegrees(dirUp, degree);
}

// move down by degrees
void moveDownDegrees(int arg_cnt, char **args)
{
  int degree;

  if (arg_cnt > 1) {
    degree = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper degree (0-360)"));
    return;
  }

  stepper.moveDegrees(dirDown, degree);
}

// obtain remaining steps
void getStep(int arg_cnt, char **args)
{
  Serial.println(stepper.getStep());
}

// obtain delay setting
void getDelay(int arg_cnt, char **args)
{
  Serial.println(stepper.getDelay());
}

// obtain rpm setting
void getRpm(int arg_cnt, char **args)
{
  Serial.println(stepper.getRpm());
}

// adjust steps-per-revolution
void setStepsPerRev(int arg_cnt, char **args)
{
  if (arg_cnt > 1) {
    stepsPerRev = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper steps-per-revolution"));
    return;
  }

  stepper.setTotalSteps(stepsPerRev);
}

// adjust rpm
void setRPM(int arg_cnt, char **args)
{
  if (arg_cnt > 1) {
    rpm = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper rpm"));
    return;
  }

  stepper.setRpm(rpm);
}

// over ride delay setting
void setDelay(int arg_cnt, char **args)
{
  int delayTime;

  if (arg_cnt > 1) {
    delayTime = cmdStr2Num(args[1], 10);
  } else {
    Serial.println(F("Please provide proper delayTime"));
    return;
  }

  stepper.setDelay(delayTime);
}

// turn on electro magnet
void magOn(int arg_cnt, char **args)
{
  digitalWrite(electroMag, HIGH);
}

// turn off electro magnet
void magOff(int arg_cnt, char **args)
{
  digitalWrite(electroMag, LOW);
}

// pick up king and hold it
void kingPick(int arg_cnt, char **args)
{
  stepper.move(dirDown, 1460);
  digitalWrite(electroMag, HIGH);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// place king and let go
void kingPlace(int arg_cnt, char **args)
{
  stepper.move(dirDown, 1460);
  digitalWrite(electroMag, LOW);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// pick up queen and hold it
void queenPick(int arg_cnt, char **args)
{
  stepper.move(dirDown, 1750);
  digitalWrite(electroMag, HIGH);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// place queen and let go
void queenPlace(int arg_cnt, char **args)
{
  stepper.move(dirDown, 1750);
  digitalWrite(electroMag, LOW);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// pick up bishop and hold it
void bishopPick(int arg_cnt, char **args)
{
  stepper.move(dirDown, 2000);
  digitalWrite(electroMag, HIGH);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// place bishop and let go
void bishopPlace(int arg_cnt, char **args)
{
  stepper.move(dirDown, 2000);
  digitalWrite(electroMag, LOW);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// pick up knight and hold it
void knightPick(int arg_cnt, char **args)
{
  stepper.move(dirDown, 2100);
  digitalWrite(electroMag, HIGH);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// place knight and let go
void knightPlace(int arg_cnt, char **args)
{
  stepper.move(dirDown, 2100);
  digitalWrite(electroMag, LOW);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// pick up rook and hold it
void rookPick(int arg_cnt, char **args)
{
  stepper.move(dirDown, 2325);
  digitalWrite(electroMag, HIGH);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// place rook and let go
void rookPlace(int arg_cnt, char **args)
{
  stepper.move(dirDown, 2325);
  digitalWrite(electroMag, LOW);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// pick up pawn and hold it
void pawnPick(int arg_cnt, char **args)
{
  stepper.move(dirDown, 2540);
  digitalWrite(electroMag, HIGH);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

// place pawn and let go
void pawnPlace(int arg_cnt, char **args)
{
  stepper.move(dirDown, 2540);
  digitalWrite(electroMag, LOW);
  stepper.move(dirUp, 3000);
  stepper.motorOff();
}

//
//==========================Distance Sensor Section=====================================
//
void pingDis(int arg_cnt, char **args)
{
  int runCount = 1;
  unsigned int distance;

  if (arg_cnt > 1) {
    runCount = cmdStr2Num(args[1], 10);
  }

  // calibrate
  for (int i = 0; i < 10; i++) {
    distance = sensor.getDist();
  }

  // move into position
  stepper.move(dirDown, 600);
  stepper.motorOff();

  // collect samples
  stats.clear();

  for (int i = 0; i < runCount; i++) {
    // Get distance from sensor
    distance = sensor.getDist();

    // Print distance to Serial
    //Serial.println(distance);

    stats.add(distance);

    delay(10);
  }

  // home
  stepper.move(dirUp, 3000);
  stepper.motorOff();

  // stats
  Serial.print(F("Min: "));
  Serial.println(stats.minimum(), 4);
  Serial.print(F("Max: "));
  Serial.println(stats.maximum(), 4);
  Serial.print(F("Avg: "));
  Serial.println(stats.average(), 4);

  if (stats.average() >= 95) {
    Serial.println(F("Empty"));
  } else if (stats.average() >= 70) {
    Serial.println(F("Pawn"));
  } else if (stats.average() >= 60) {
    Serial.println(F("Rook"));
  } else if (stats.average() >= 51) {
    Serial.println(F("Knight or Bishop"));
  } else if (stats.average() >= 48) {
    Serial.println(F("Bishop or Knight"));
  } else if (stats.average() >= 35) {
    Serial.println(F("Queen"));
  } else if (stats.average() >= 23) {
    Serial.println(F("King"));
  }
}

//
//==========================Help Section=====================================
//
void help(int arg_cnt, char **args)
{
  Serial.println( F( "Available commands are:\n"
                     "  Motion commands.\n"
                     "    home                        - return home\n"
                     "    moveUp xxx                  - move up [steps]\n"
                     "    motorOff                    - turn motor off\n"
                     "    moveDown xxx                - move down [steps]\n"
                     "    moveToUp xxx                - move to [steps] up\n"
                     "    moveToDown xxx              - move to [steps] down\n"
                     "    moveUpDegrees xxx           - move up by degrees\n"
                     "    moveDownDegrees xxx         - move down by degrees\n"
                     "\n"
                     "  Configuration commands.\n"
                     "    setStepsPerRev xxxx         - set steps-per-revolution\n"
                     "    setDelay       xxxx         - set delay\n"
                     "    setRPM         xx           - set RPM\n"
                     "\n"
                     "  SysInfo commands.\n"
                     "    getStep                     - return current steps\n"
                     "    getDelay                    - return the delay\n"
                     "    getRpm                      - return the RPM\n"
                     "\n"
                     "  Electro Magnet commands\n"
                     "    magOn                       - turn electro magnet on\n"
                     "    magOff                      - turn electro magnet off\n"
                     "\n"
                     "  Distance Measurment commands\n"
                     "    pingDis                     - return distance (in mm)n"
                     "\n"
                     "  Chess Pick and Place commands - only valid on test panel\n"
                     "    kingPick                    - pickup king\n"
                     "    kingPlace                   - place king\n"
                     "    queenPick                   - pickup queen\n"
                     "    queenPlace                  - place queen\n"
                     "    bishopPick                  - pickup bishop\n"
                     "    bishopPlace                 - place bishop\n"
                     "    knightPick                  - pickup knight\n"
                     "    knightPlace                 - place knight\n"
                     "    rookPick                    - pickup rook\n"
                     "    rookPlace                   - place rook\n"
                     "    pawnPick                    - pickup pawn\n"
                     "    pawnPlace                   - place pawn\n"
                     "\n"
                     "  System commands.\n"
                     "    sys dumpEE                  - EEPROM contents\n"
                     "    sys refreshFS               - refresh factory settings, read from EEPROM\n"
                     "    sys getFSSerial             - factory settings - serial\n"
                     "    sys getFSBoardVersion       - factory settings - board version\n"
                     "    sys getFSFirmwareVersion    - factory settings - firmware version\n"
                     "    sys getFSDate               - factory settings - date\n"
                     "    sys getFSUUID               - factory settings - UUID\n"
                     "    sys setFDS                  - set factory default settings, resets to defaults\n"
                     "    sys setFS [field] [value]   - set factory settings\n"
                     "                                - available fields are date, serial, boardVersion, and firmwareVersion\n"
                     "    sys eraseEE                 - erase EEPROM (0xff)\n"
                     "    sys writeMagNum             - write magic number to EEPROM, used for validation\n"
                     "\n"
                     "  help                          - commands\n"
                     "  h                             - commands\n"
                     "  ?                             - commands\n"
                     "  version                       - version\n"
                     "  availRAM                      - free RAM\n"
                     "  reset                         - reset board\n") );

  returnResponse();
}

//
//==========================Setup Section=====================================
//
void setup()
{
  long magic;

  // init the command line and set it for a speed of 57600
  cmdInit(115200);

  stepper.setRpm(rpm);
  stepper.setTotalSteps(stepsPerRev);

  // home z-axis
  stepper.move(dirUp, 15000);
  stepper.motorOff();

  Serial.println(F("Motion Control Test Bed"));

  magic = readMagic();
  if ( magic != magicNumber ) {
    // not programmed yet
    Serial.println(F("Configurating EEPROM, one-time only"));
    eepromEraseAll();
    writeMagic();

    setFactoryDefaultSettings();
  }

  // sensors: GP2Y0A60SZLF_5V, GP2Y0A710K0F_5V_DS, GP2Y0A41SK0F_5V_DS, GP2Y0A51SK0F_5V_DS
  sensor.setModel(sensor.GP2Y0A51SK0F_5V_DS);

  Serial.println(F("Loading factory settings"));
  getFactorySettings();

  // set electro magnet pin
  pinMode(electroMag, OUTPUT);
  digitalWrite(electroMag, LOW);

  cmdAdd("pingDis", pingDis);

  cmdAdd("home", homePos);
  cmdAdd("motorOff", motorOff);

  cmdAdd("moveUp", moveUp);
  cmdAdd("moveDown", moveDown);
  //cmdAdd("moveToUp", moveToUp);
  //cmdAdd("moveToDown", moveToDown);

  //cmdAdd("moveUpDegrees", moveUpDegrees);
  //cmdAdd("moveDownDegrees", moveDownDegrees);

  cmdAdd("setStepsPerRev", setStepsPerRev);
  cmdAdd("setDelay", setDelay);
  cmdAdd("setRPM", setRPM);

  cmdAdd("getStep", getStep);
  cmdAdd("getDelay", getDelay);
  cmdAdd("getRpm", getRpm);

  cmdAdd("magOn", magOn);
  cmdAdd("magOff", magOff);

  cmdAdd("kingPick", kingPick);
  cmdAdd("kingPlace", kingPlace);
  cmdAdd("queenPick", queenPick);
  cmdAdd("queenPlace", queenPlace);
  cmdAdd("bishopPick", bishopPick);
  cmdAdd("bishopPlace", bishopPlace);
  cmdAdd("knightPick", knightPick);
  cmdAdd("knightPlace", knightPlace);
  cmdAdd("rookPick", rookPick);
  cmdAdd("rookPlace", rookPlace);
  cmdAdd("pawnPick", pawnPick);
  cmdAdd("pawnPlace", pawnPlace);

  cmdAdd("sys", sysCommand);
  cmdAdd("availRAM", AvailableRAM);
  cmdAdd("version", versionDisplay);
  cmdAdd("reset", restartCode);
  cmdAdd("help", help);
  cmdAdd("?", help);
  cmdAdd("h", help);

  displayMessage();

  Serial.println(F("Ready for operation"));
}

//
//==========================Main Section=====================================
//
void loop()
{
  cmdPoll();
}

