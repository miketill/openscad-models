spacing=30;
hole=7.5;
hole_depth=7;
$fn=60;
x=2;
y=2;
wall_height=7;
wall_width=1;

difference() {
    cube([x*spacing+wall_width*2,y*spacing+wall_width*2,wall_width+hole_depth+wall_height]);
    translate([wall_width,wall_width,wall_width+hole_depth]) cube([x*spacing,y*spacing,wall_width+hole_depth+wall_height]);
    start_off=spacing/2;
    for (x = [0:x-1], y = [0:y-1]) {
        translate([wall_width+start_off+x*spacing,wall_width+start_off+y*spacing,wall_width]) cylinder(d=hole,h=hole_depth);
    }
}
