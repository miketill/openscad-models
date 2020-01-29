$fn=90;
hole=19;
spacing=2;
wall=5;
rows=3;
cols=4;
screw_post=1.6;
screw=2;
post=screw*3;
post_height=20;
base_width=wall*2+hole*cols+spacing*(cols-1);
base_depth=wall*2+hole*rows+spacing*(rows-1);
base_height=3;

union() {
    base();
    translate([wall,wall,0]) post();
    translate([wall,base_depth-wall,0]) post();
    translate([base_width-wall,wall,0]) post();
    translate([base_width-wall,base_depth-wall,0]) post();
}
translate([base_width+10,0,0]) difference() {
    base();
    translate([wall,wall,0]) post_hole();
    translate([wall,base_depth-wall,0]) post_hole();
    translate([base_width-wall,wall,0]) post_hole();
    translate([base_width-wall,base_depth-wall,0]) post_hole();
}

module base() {
    difference() {
        cube([
                base_width
                , base_depth
                , base_height]);
        for (x=[0:cols-1],y=[0:rows-1]) {
            translate([
                    wall+hole/2+(hole+spacing)*x
                    , wall+hole/2+(hole+spacing)*y
                    , 0]) cylinder(h=10,d=hole);
        }
    }
}

module post_hole() {
    difference() {
        cylinder(h=post_height,d=screw_post);
    }
}

module post() {
    difference() {
        cylinder(h=post_height,d=post);
        cylinder(h=post_height,d=screw);
    }
}
