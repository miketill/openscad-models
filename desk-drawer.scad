wall=2;
depth=160;
hole_d = 5;
hole_spacing = 92.5;
hole_offset = 15+hole_d/2;
width = hole_offset*2+hole_spacing;
height=31+wall*3+5;
box_width = width/2-wall*2;
box_height = height - wall*2-1;
echo(height);
echo(box_height);

//desk_box();
desk_frame();

module desk_box() {
    difference() {
        cube([box_width, depth, box_height]);
        translate([wall,wall,wall]) cube([box_width-2*wall, depth-2*wall, box_height]);
    }
    translate([box_width,.0001,0]) rotate([90,0,-90]) box_brace();
}

module box_brace() {
    difference() {
        linear_extrude(height=box_width) polygon(points=[[0,0],[0,box_height-6],[8,box_height-6],[0,0]]);
        translate([0,0,wall]) linear_extrude(height=box_width-wall*2) polygon(points=[[0,0],[0,box_height-6],[8,box_height-6],[0,0]]);
    }
    translate([0,box_height-6,0]) difference() {
        cube([8,6,box_width]);
        translate([0,0,wall]) cube([6,4,box_width-wall*2]);
    }
}

module desk_frame() {
    rotate([1*90,0,0]) union(){
        difference() {
            cube([width,depth,height]);
            translate([wall,0,wall]) cube([width-wall*2,depth,height-wall*2]);
            translate([0,0,0]) {
                translate([hole_offset,hole_offset,0]) cylinder(d=5,h=10,$fn=90);
                translate([width-hole_offset,hole_offset,0]) cylinder(d=5,h=10,$fn=90);
                translate([hole_offset,depth-hole_offset,0]) cylinder(d=5,h=10,$fn=90);
                translate([width-hole_offset,depth-hole_offset,0]) cylinder(d=5,h=10,$fn=90);
            }

            translate([hole_offset-2.5,hole_offset-2.5,height-3])lower_cut();
            translate([width-hole_spacing/2-2.5,hole_offset-2.5,height-3])lower_cut();
            upper_cut();
        }

        stoppers = (width-wall*2)/2-wall*6;
        translate([wall*3,0,0]) cube([stoppers,3,wall*3+5]);
        translate([width-wall*3-stoppers,0,0]) cube([stoppers,3,wall*3+5]);
        translate([width/2-wall/2,0,0]) cube([wall,depth,height]);
    }
}

module lower_cut() {
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

module upper_cut() {
    translate([width*.1,depth*.2,0]) linear_extrude(height=5) {
        w = width*.8;
        d = depth*.6;
        hull() {
            circle(d=5);
            translate([w,0,0]) circle(d=5);
            translate([0,d,0]) circle(d=5);
            translate([w,d,0]) circle(d=5);
        }
    }
}
