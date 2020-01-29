step_width=12;
width=20;
step_height=.5;
start_height=3;
end_height=10;
count=end_height-start_height;

difference() {
    union() {
        translate([0,-6,0])cube([(end_height-start_height+.5)*step_width,7,3]);
        for(i = [start_height:step_height:end_height]) {
            w = (end_height-i+.5)*step_width;
            cube([w,width,i]);
        }
    }
    for(i = [start_height:step_height:end_height]) {
        w = (end_height-i+.5)*step_width;
        difference() {
            translate([w-.25*step_width,4,0]) {
                cylinder($fn=30,d=2,h=end_height);
                hull() {
                    translate([0,4,0]) cylinder($fn=60,d=2,h=end_height);
                    translate([0,12,0]) cylinder($fn=60,d=2,h=end_height);
                }
                translate([0,-8,2]) linear_extrude(50) text(text=str(i), size=2, halign="center");
            }
        }
    }
}
/*
*/
