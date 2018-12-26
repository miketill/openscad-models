wall_width=.45*3;
lid_tol=.3;
difference() {
    cube([170,150,200]);
    translate([wall_width,wall_width,wall_width]) cube([170-wall_width*2,150-wall_width*2,600]);
}
//translate([wall_width,wall_width,0]) rotate([0,0,-135]) wedge();
//wedge();
module wedge() {
    intersection() {
        translate([-50,-100,0]) difference() {
            cube([50,200,10]);
            rotate([0,-atan(.2),0]) cube([60,200,10]);
        }
        translate([0,0,0]) rotate([0,0,135]) cube([100,100,50]);
    }
}

translate([0,-200,0]) {
    difference() {
        union() {
            cube([170,150,2]);
            echo(150-wall_width*2-lid_tol*2);
            echo(170-wall_width*2-lid_tol*2);
            translate([wall_width+lid_tol,wall_width+lid_tol,0]) cube([170-wall_width*2-lid_tol*2,150-wall_width*2-lid_tol*2,4]);
        }
        translate([30,30,0]) cylinder(d=50,h=10);
    }
}
