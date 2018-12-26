//6.5mm deep
//23mm to hole
//
$fn=60;
length=200;
thickness=.8;
difference() {
    union() {
        cube([20,thickness,length]);
        translate([20,0,0]) cube([thickness,20,length]);
        translate([20,20,0]) cube([20,thickness,length]);
        translate([39,20,0]) cube([thickness,20,length]);
    }
    translate([5,-5,5]) rotate([0,90,90]) cylinder(d=1.5,h=10);
    translate([35,35,5]) rotate([0,90,0]) cylinder(d=1.5,h=10);
    if (length > 20) {
        for(i=[1:floor(length/20)-1]) {
            translate([5,-5,20*i]) rotate([0,90,90]) cylinder(d=1.5,h=10);
            translate([35,35,20*i]) rotate([0,90,0]) cylinder(d=1.5,h=10);
        }
    }
    translate([5,-5,length-5]) rotate([0,90,90]) cylinder(d=1.5,h=10);
    translate([35,35,length-5]) rotate([0,90,0]) cylinder(d=1.5,h=10);
}

