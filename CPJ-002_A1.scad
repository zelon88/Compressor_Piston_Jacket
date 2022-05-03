// ----------------------------------------------------------------------------------------------------
// PROJECT INFORMATION

// NAME:  Compressor_Piston_Jacket
// REVISION:  A1
// START DATE:  5/2/2022
// CURRENT VERSION DATE:  5/2/2022
// LICENSE:  GPLv3
// AUTHOR:  Justin Grimes (@zelon88)
// DESCRIPTION:  A piston jacket for retrofitting the EverStart MAXX Model J5CPDE air compressor
//  with the steel piston & connecting rod from a Pittsburg Automotive Model 63152, 4077, 61740, or 63109
//  "12V Portable Inflator" available for $9.99 from Harbor Freight Tools.
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// PART INFORMATION

// NAME:  WINDOW INSERTS (4PCS)
// PART ID:  CPJ-002
// REVISION:  A1
// START DATE:  5/2/2022
// CURRENT VERSION DATE:  5/2/2022
// AUTHOR:  Justin Grimes (@zelon88)
// DESCRIPTION:  The Window Inserts are press fit into the side cutouts of the piston jacket
//  and serve to stabilize the piston in the cylinder, prevent piston slap, & act as a friction surface.
// FILE NAME: CPJ-002_A1.scad
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// PRINTER CONFIGURATION

// PRINTER TYPE:  XYZPrinting da Vinci Jr. 1.0A Pro
// SLICER:  XYZPrint Version 2.0.21 
// NOZZLE DIAMETER:  0.40mm
// NOZZLE MATERIAL:  Copper
// NOZZLE TEMPERATURE:  210c
// NOZZLE FIRST LAYER TEMPERATURE:  215c
// LAYER HEIGHT:  0.20mm
// FIRST LAYER HEIGHT:  0.35mm
// SHELL THICKNESS NORMAL:  2 Layers
// SHELL THICKNESS TOP & BOTTOM SURFACE:  5 Layers
// INNER SHELLS:  0mm
// LIGHTWEIGHT:  No
// INFILL DENSITY:  100%
// INFILL TYPE:  Gyroid
// DETAIL THRESHOLD:  0.001mm
// AVOID CROSSING PRINTED PARTS:  No
// SHELLS NORMAL SPEED:  30mm/s
// SHELLS SURFACE SPEED:  30mm/s
// SHELL SMALL RADIUS SPEED:  20mm/s
// INFILL NORMAL SPEED:  45mm/s
// INFILL TOP SURFACE SPEED:  45mm/s
// SOLID INFILL SPEED:  45mm/s
// BRIDGE PRINTING SPEED:  20mm/s
// NON-PRINTING MOVEMENT SPEED:  50mm/s
// BOTTOM LAYER SPEED:  10mm/s
// RETRACT SPEED:  30mm/s
// AUTO SPEED ADJUSTMENT FOR SMALL PARTS:  No
// BRIM:  No
// SUPPORTS:  No
// RAFT:  No
// RETRACT LENGTH:  4.5mm
// ACTIVATE THRESHOLD (MIN TRAVEL LENGTH):  2mm
// RETRACTION NOZZLE LIFT:  0mm
// ADD EXTRA FILAMENT (WHEN TRAVEL < RETRACTION):  0mm
// RETRACT EACH LAYER:  Yes
// DISABLE RETRACTION CURRENT PERIMETER:  Yes
// SHELL EXTRUSION RATIO:  100%
// SHELL FILL EXTRUSION RATIO:  100%
// INFILL EXTRUSION RATIO:  100%
// SEAM CORNER PREFERENCES:  "Smart Hiding"
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// PARTS LIST

// 1. 2m PLA Filament
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// MANUFACTURING INSTRUCTIONS

// 1. Visually inspect for damage or manufacturing irregularities.
// 2. File to remove any burrs or rough edges.
// 3. DO NOT chase any holes with a drill bit.
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// GEOMETRY
difference() {
  // / The body of a cylinder.
  translate([0, 0, 2]) cylinder(r=9.45, h=6.9, $fn=512);

  // / Remove the center.
  translate([0, 0, 2]) cylinder(h=6.9, r=6.85, $fn=512);
  // / Remove cubes from the corners leaving only chunks with inner & outer diameters.
  translate([4, 4, 2]) cube([10, 10, 6.9]);
  translate([-14, 4, 2]) cube([10, 10, 6.9]);
  translate([-14, -14, 2]) cube([10, 10, 6.9]);
  translate([4, -14, 2]) cube([10, 10, 6.9]); }
// ----------------------------------------------------------------------------------------------------