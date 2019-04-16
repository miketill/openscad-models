$fn=60;
length=135;
thickness=.8;
difference() {
    linear_extrude(10) {
        square([thickness,12]);
        translate([0,12-thickness,0]) square([5,thickness]);
        translate([5-thickness,12-thickness,0]) square([thickness,12]);
        translate([-13+5-thickness,24-thickness*2,0]) square([13,thickness]);
    }
    translate([-5,2,2]) rotate([0,90,0]) cylinder(d=1.5,h=10);
    translate([-5,2,8]) rotate([0,90,0]) cylinder(d=1.5,h=10);
}
