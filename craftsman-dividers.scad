//*small
width = 51;
height = 30;
depth = 1.8;
//*/

//*large
width = 107.5;
height = 48;
depth = 1.2;
//*/


difference() {
  cube([width,height,depth]);
  rotate([0,0,45]) translate([-1,-1,0]) cube([2,2,10]);
  translate([width,0,0]) rotate([0,0,45]) translate([-1,-1,0]) cube([2,2,10]);
}
