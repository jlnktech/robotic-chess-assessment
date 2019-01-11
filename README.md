# robotic-chess-assessment
low cost chess robot

kicad folder contains schematic layout of hall effect detection using DRV5053. Idea is to scan 8 squares (1 row) at once, then repeat for other 7 rows to cut down on time. Each piece must have magnet attached.

pcb123 folder contains schematic layout of IR sensors using QRE1113. Once again, scan 1 row (8 squares) then repeat. Each piece must have reflect material on the bottom and be able to cover the slot on each of the squares.

CAD folder contains the mechanical layout of the xyz table

firmware folder contains arduino test for the z-axis portion

yet to be done is to add the raspberry pi actual chess code

