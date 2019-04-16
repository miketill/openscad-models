angle=60;
$fn=90;
difference() {
    union() {
        linear_extrude(height=2) {
            difference() {
                hull() {
                    translate([0,75,0]) circle(r=5);
                    translate([150,0,0]) circle(r=5);
                    translate([150,150,0]) circle(r=5);
                }
            }
        }
        translate([10,75,0]) rotate([0,90-angle,0]) difference() {
            cylinder(d=15,h=150);
            cylinder(d=5,h=150);
        }
        linear_extrude(height=20) {
            hull() {
                translate([10,75,0]) circle(d=15);
                translate([50,55,0]) circle(d=15);
                translate([50,95,0]) circle(d=15);
            }
        }
    }
    translate([0,0,-200]) cube([200,200,200]);
}
