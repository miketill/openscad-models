$fn=90;
difference() {
    cube([210,120,1]);
    translate([0,60,0]) cylinder(d=2,h=10);
    translate([210,60,0]) cylinder(d=2,h=10);
    translate([200,60,0]) cylinder(d=5,h=10);

    translate([200,10,0]) cylinder(d=6,h=10);
    translate([10,10,0]) cylinder(d=6,h=10);
    translate([105,10,0]) cylinder(d=6,h=10);

    translate([200,110,0]) cylinder(d=6,h=10);
    translate([10,110,0]) cylinder(d=6,h=10);
    translate([105,110,0]) cylinder(d=6,h=10);

    translate([10,60-50/2,0]) cylinder(d=6,h=10);
    translate([10,60+50/2,0]) cylinder(d=6,h=10);

    translate([20,60-55/2,0]) cylinder(d=6,h=10);
    translate([20,60+55/2,0]) cylinder(d=6,h=10);

    translate([30,60-60/2,0]) cylinder(d=6,h=10);
    translate([30,60+60/2,0]) cylinder(d=6,h=10);
}
