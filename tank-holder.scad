base=25;
hole=7.5;
hole_depth=7;
$fn=180;
difference() {
cylinder(d=base,h=hole_depth+1);
translate([0,0,1]) cylinder(d=hole,h=100);
}