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

// NAME:  PISTON JACKET
// PART ID:  CPJ-001
// REVISION:  A1
// START DATE:  5/2/2022
// CURRENT VERSION DATE:  5/2/2022
// AUTHOR:  Justin Grimes (@zelon88)
// DESCRIPTION:  The Piston Jacket serves as the main body of the part. 
//  It slides over the piston and features four rectangular windows in the side.
//  Once installed on the piston, "CPJ-002" can be installed by press fitting 
//  one piece of "CPJ-002" into each of the four windows.
// FILE NAME: CPJ-001_A1.scad
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
  // The main body of the piston jacket.
  cylinder(h=12, r=9.45, $fn=512);

  // Chamfer the top.
  cylinder(r1=9.45, r2=7.5, h=2, $fn=512);
  // Remove the center, small diameter.
  cylinder(h=10.5, r=7.5, $fn=512);
  // Remove the center, large diameter.
  cylinder(h=12, r=6.15, $fn=512);
  // Remove the side windows.
  rotate([0, 0, 0]) translate([-4, -10, 2]) cube([8, 20, 6.9]);
  rotate([0, 0, 90]) translate([-4, -10, 2]) cube([8, 20, 6.9]); }
// ----------------------------------------------------------------------------------------------------