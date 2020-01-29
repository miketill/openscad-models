//131x45x45
wall=1.2;
height=90;
width=46;
gap_width=20;
gap_offset_height=20;
gap_top=5;

for (i=[0:3],j=[0:2]) {
    translate([(width+wall)*i,(width+wall)*j,0]) ball_box();
}
module ball_box() {
    difference() {
        cube([width+wall*2, width+wall*2, height+wall]);
        translate([wall,wall,wall]) cube([width,width,height+wall]);
        translate([0,(width-gap_width)/2+wall,gap_offset_height]) cube([width*2,gap_width,height-gap_top-gap_offset_height]);
        translate([(width-gap_width)/2+wall,0,gap_offset_height]) cube([gap_width,width*2,height-gap_top-gap_offset_height]);
    }
}
/*
for (x = [0:3]) {
    translate([0,(width+wall)*x,0]) difference() {
        cube([length+wall*2, width+wall*2, height]);
        translate([wall,wall,wall])cube([length, width, height]);
        translate([0, wall+.25*width, wall+.25*height]) cube([wall, width*.5, height]);
        translate([wall+length, wall+.25*width, wall+.25*height]) cube([wall, width*.5, height]);
    }
}
//*/
