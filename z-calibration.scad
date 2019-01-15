cube_size=50;
bed_offset=90;

translate([-cube_size/2,-cube_size/2,0]) {
    cube([cube_size,cube_size,.2]);
    
    /*
    translate([-bed_offset+cube_size/2,bed_offset-cube_size/2,0]) cube([cube_size,cube_size,.2]);
    translate([-bed_offset+cube_size/2,-bed_offset+cube_size/2,0]) cube([cube_size,cube_size,.2]);
    translate([bed_offset-cube_size/2,bed_offset-cube_size/2,0]) cube([cube_size,cube_size,.2]);
    translate([bed_offset-cube_size/2,-bed_offset+cube_size/2,0]) cube([cube_size,cube_size,.2]);

    translate([0,bed_offset-cube_size/2,0]) cube([cube_size,cube_size,.2]);
    translate([0,-bed_offset+cube_size/2,0]) cube([cube_size,cube_size,.2]);
    translate([-bed_offset+cube_size/2,0,0]) cube([cube_size,cube_size,.2]);
    translate([bed_offset-cube_size/2,0,0]) cube([cube_size,cube_size,.2]);

    translate([(-bed_offset+cube_size/2)/2,(bed_offset-cube_size/2)/2,0]) cube([cube_size,cube_size,.2]);
    translate([(-bed_offset+cube_size/2)/2,(-bed_offset+cube_size/2)/2,0]) cube([cube_size,cube_size,.2]);
    translate([(bed_offset-cube_size/2)/2,(bed_offset-cube_size/2)/2,0]) cube([cube_size,cube_size,.2]);
    translate([(bed_offset-cube_size/2)/2,(-bed_offset+cube_size/2)/2,0]) cube([cube_size,cube_size,.2]);
    //*/
}
