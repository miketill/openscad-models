//15mm sides
//65mm displacement
//57mm displacement
disp=57;
h=30;

spacer();
translate([0,90,0]) spacer();
cube([disp+17,105,1]);
module spacer() {
translate([0,0,h-1]) {
translate([0,0,1]) difference() {
  cube([17,15,15]);
  translate([1,0,0]) cube([15,15,15]);
}
translate([disp,0,0]) {
translate([0,0,1]) difference() {
  cube([17,15,15]);
  translate([1,0,0]) cube([15,15,15]);
}
cube([17,15,1]);
}
cube([disp+17,15,1]);
}
cube([disp+17,15,30]);
}
