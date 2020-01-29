height=20;
spacing=2;
$fn=90;
difference() {
    union() {
        cylinder(h=height, d=16);
        translate([0,spacing,0]) cube([18,1,height]);
        translate([0,-spacing-1,0]) cube([18,1,height]);
    }
    cylinder(h=height, d=14);
    translate([0,-spacing,0]) cube([height*2,spacing*2,height*2]);
}
translate([18,spacing,0]) cylinder(h=height, d=2);
translate([18,-spacing,0]) cylinder(h=height, d=2);
