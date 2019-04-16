//$fn=360;
wall_thickness=2;
bottom_width=66;
top_width=72;
slope_height=70;
lip_height=20;
tolerance=.09;
hole_width=50;

difference() {
    cylinder(h=slope_height,d1=bottom_width,d2=top_width);
    translate([0,0,wall_thickness])
        cylinder(h=slope_height
                ,d1=bottom_width-wall_thickness*2
                ,d2=top_width-wall_thickness*2);
}
difference() {
    translate([0,0,slope_height]) cylinder(h=lip_height,d=top_width);
    translate([0,0,slope_height]) cylinder(h=lip_height,d=top_width-wall_thickness*2);
}

translate([top_width+20,0,0]) {
    lid_insert_d=top_width-wall_thickness*2-tolerance*2;
    difference() {
        union() {
            cylinder(h=5, d=lid_insert_d);
            translate([0,0,5])
                cylinder(h=wall_thickness,d=top_width);
            cylinder(hole_width/2,d1=hole_width,d2=hole_width*1.5);
        }
        cylinder(hole_width/2,d1=hole_width-wall_thickness*2,d2=hole_width*1.5-wall_thickness*2);
    }
    translate([lid_insert_d/2-1,-1,0]) cube([3,2,2]);
    translate([-lid_insert_d/2-2,-1,0]) cube([3,2,2]);
    translate([-1,lid_insert_d/2-1,0]) cube([2,3,2]);
    translate([-1,-lid_insert_d/2-2,0]) cube([2,3,2]);
}
