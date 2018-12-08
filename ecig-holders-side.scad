translate([-50,-75/2]) {
    difference() {
        cube([100,75,8]);
        //rotate([90,0,90]) translate([55,14,-10]) cylinder(h=120,r=12);
        //rotate([90,0,90]) translate([20,14,-10]) cylinder(h=120,r=12);
        rotate([90,0,90]) translate([14,13,-10]) cylinder(h=120,r=12);
        rotate([90,0,90]) translate([75-14,13,-10]) cylinder(h=120,r=12);
    }
}
