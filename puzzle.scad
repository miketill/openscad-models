difference() {
    cube([50,50,100]);
    translate([18,18,1.8]) cube([30,30,100-1.8-.4*6]);
    translate([1.2,20,1.8]) cube([7,25,100-1.8-.4*6]);
    translate([3,.8,85]) rotate([90,0,0]) linear_extrude(.8) {
        text("How");
        translate([0,-15,0]) text("Many");
        translate([0,-30,0]) text("Months");
        translate([0,-45,0]) text("Have");
        translate([0,-60,0]) text("28");
        translate([0,-75,0]) text("Days");
    }
    translate([5,5,0]) cylinder(d=1.6,h=10,$fn=60);
    translate([5,5,90]) cylinder(d=1.6,h=10,$fn=60);
    translate([0,0,96]) {
        rotate([45,0,0]) cube([50,1,1]);
        rotate([45,0,90]) cube([50,1,1]);
        translate([0,50,0]) rotate([45,0,0]) cube([50,1,1]);
        translate([50,0,0]) rotate([45,0,90]) cube([50,1,1]);
    }
}
rotate([45,0,0]) cube([50,3,3]);
rotate([45,0,90]) cube([50,3,3]);
translate([0,50,0]) rotate([45,0,0]) cube([50,3,3]);
translate([50,0,0]) rotate([45,0,90]) cube([50,3,3]);

