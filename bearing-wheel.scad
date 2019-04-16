$fn=90;
/*
translate([0,0,0]) cylinder(d=50, h=10);
translate([0,0,40]) cylinder(d=50, h=10);
difference() {
translate([0,0,10]) cylinder(d=50, h=30);
translate([0,0,25]) rotate_extrude()
    translate([25,0,0]) circle(d=40);
}
rotate_extrude()
    polygon(
        points=[
        [0,0],
        [0,100],
        [50,100],
        [30,75],
        [30,25],
        [50,0]
        ]
        );
//*/

linear_extrude(height=200, twist=-360)
    translate([25,0,0]) square([10,10]);
