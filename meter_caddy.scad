i_d = 10.5;
i_h = 35;
i_w = 100.5;
wall_thick = .8;
arm_length = 20;
arm_thick = 5;
pad_size = 15;
o_d = i_d+wall_thick*2;
o_h = i_h+wall_thick*2;
o_w = i_w+wall_thick*2;

translate([0, arm_length, 0]) difference() {
    cube([o_w, o_d, o_h]);
    translate([wall_thick, wall_thick, 2]) cube([i_w, i_d, i_h+100]);
    translate([wall_thick+3, 0, 2]) cube([i_w-6, o_d, i_h+100]);
}
cube([arm_thick, arm_length, arm_thick]);
cube([pad_size, 1.2, pad_size]);
translate([o_w-arm_thick, 0, 0]) cube([arm_thick, arm_length, arm_thick]);
translate([o_w-pad_size, 0, 0]) cube([pad_size, 1.2, pad_size]);
