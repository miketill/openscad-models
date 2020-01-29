b_width = 38;
b_di = 21;
wall = .8;
lift = 5;
b_count = 6;

difference() {
    translate([0,0,1.2]) rotate([lift,0,0]) {
        difference() {
            cube([b_width+wall*2, b_di*b_count+wall*2, b_di+wall]);
            translate([wall,wall,0]) cube([b_width, b_di*b_count, b_di*wall*2]);
            translate([0,0,wall+b_di*.4]) cube([b_width+wall*2, b_di*1.5, b_di]);
            translate([0,wall*2+b_di*b_count-b_di*1.5,wall+b_di/2]) cube([b_width+wall*2, b_di*1.5, b_di]);
        }
        translate([0,0,-100]) cube([b_width+wall*2, b_di*b_count+wall*2, 100]);
    }
    translate([0,0,-300]) cube([300,300,300]);
}
