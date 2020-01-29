wall=2;
depth=160;
hole_d = 5;
hole_spacing = 92.5;
hole_offset = 15+hole_d/2;
width = hole_offset*2+hole_spacing;
height=30+wall*3;


rotate([90,0,0]) union(){
    difference() {
        cube([width,depth,height]);
        translate([wall,0,wall]) cube([width-wall*2,depth,height-wall*2]);
        translate([hole_offset,hole_offset,0]) cylinder(d=5,h=10,$fn=90);
        translate([width-hole_offset,hole_offset,0]) cylinder(d=5,h=10,$fn=90);
        translate([hole_offset,depth-hole_offset,0]) cylinder(d=5,h=10,$fn=90);
        translate([width-hole_offset,depth-hole_offset,0]) cylinder(d=5,h=10,$fn=90);
        translate([hole_offset-2.5,hole_offset-2.5,height-3])upper_cut();
        translate([width-hole_spacing/2-2.5,hole_offset-2.5,height-3])upper_cut();
    }

    stoppers = (width-wall*2)/2-wall*6;
    translate([wall*3,0,0]) cube([stoppers,1,wall*2]);
    translate([width-wall*3-stoppers,0,0]) cube([stoppers,1,wall*2]);
    translate([width/2-wall/2,0,height-15]) cube([wall,depth,15]);
}

module upper_cut() {
    linear_extrude(height=5) {
        w = hole_spacing/2-hole_offset+5;
        d = depth-hole_offset*2+5;
        hull() {
            circle(d=5);
            translate([w,0,0]) circle(d=5);
            translate([0,d,0]) circle(d=5);
            translate([w,d,0]) circle(d=5);
        }
    }
}
