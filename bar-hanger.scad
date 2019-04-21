//34OD
$fn=180;
difference() {
  cube([44/2+15,80,5]);
  translate([10,10,0]) cylinder(d=4,h=20);
  translate([10,70,0]) cylinder(d=4,h=20);
  translate([42/2+5,10,0]) cylinder(d=4,h=20);
  translate([42/2+5,70,0]) cylinder(d=4,h=20);
}
translate([10,40,0]) difference() {
  cylinder(d=44,h=30);
  cylinder(d=34,h=30);
  translate([-50,-25,0]) cube([50,50,50]);
}