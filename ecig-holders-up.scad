translate([-70,-35,0])
union() {
    cube([140,70,5]);
    translate([35,35]) {
        difference() {
            cylinder(h=75,r=15);
            cylinder(h=75,r=13);
        }
    }
    translate([105,35]) {
        difference() {
            cylinder(h=75,r=15);
            cylinder(h=75,r=13);
        }
    }
}