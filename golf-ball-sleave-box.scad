//131x45x45
wall=1.2;
length=131;
width=45.5;
height=width+1.0;
//*
for (x = [0:3]) {
    translate([0,(width+wall)*x,0]) difference() {
        cube([length+wall*2, width+wall*2, height]);
        translate([wall,wall,wall])cube([length, width, height]);
        translate([0, wall+.25*width, wall+.25*height]) cube([wall, width*.5, height]);
        translate([wall+length, wall+.25*width, wall+.25*height]) cube([wall, width*.5, height]);
    }
}
//*/
//*
translate([0,0,0]) bracket();
translate([length+wall*2-10,0,0]) bracket();

translate([0,10,0]) rotate([0,0,-90]) bracket();
translate([0,width*4+wall*5,0]) rotate([0,0,-90]) bracket();

translate([length+wall*2,0,0]) rotate([0,0,90]) bracket();
translate([length+wall*2,width*4+wall*5-10,0]) rotate([0,0,90]) bracket();

translate([10,width*4+wall*5,0]) rotate([0,0,180])bracket();
translate([10+length+wall*2-10,width*4+wall*5,0]) rotate([0,0,180]) bracket();
//*/

module bracket() {
    translate([10,-2,height-7]) rotate([0,-90,0]) linear_extrude(10) polygon(
            points=[
            [0,2],
            [8,2],
            [16,0],
            [8,0]
//            [0,2]
            ]
            );
}
