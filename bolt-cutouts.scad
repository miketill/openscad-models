module m3_nut_slot_cutout_v(l=10,z=0,t=1,r=0) {
    d=2.5*t;
    w=5.5*t;
    rotate([r,0,z]) translate([0,-d/2,-w/2]) cube([l,d,w]);
}
module m3_nut_slot_cutout_h(l=10,t=1,r=0) {
    d=2.5*t;
    w=6*t;
    rotate([0,0,r]) translate([-w/2,-d/2,0]) cube([w,d,l]);
}
module m3_nut_cutout_v(l=10,z=0,t=1) {
    rotate([0,90,z]) cylinder(d=6.5*t, h=l, $fn=6);
}
module m3_nut_cutout_h(l=10,t=1) {
    cylinder(d=6.5*t, h=l, $fn=6);
}
module m3_hole_cutout_v(l=10,z=0,t=1) {
    rotate([0,90,z]) cylinder(d=3.5*t, h=l, $fa=1, $fs=.04);
}
module m3_hole_cutout_h(l=10,t=1) {
    cylinder(d=3.5*t, h=l, $fa=1, $fs=.04);
}
module m3_cap_cutout_v(l=10,z=0,t=1) {
    rotate([0,90,z]) cylinder(d=5.8*t, h=l, $fa=1, $fs=.04);
}
module m3_cap_cutout_h(l=10,t=1) {
    cylinder(d=5.8*t, h=l, $fa=1, $fs=.04);
}
difference() {
    cube([30,30,30]);
    translate([15,27,7]) m3_cap_cutout_v(z=90,l=3);
    translate([15,0,7]) m3_hole_cutout_v(z=90,l=30);
    translate([15,0,7]) m3_nut_cutout_v(z=90,l=3);
    translate([15,0,20]) m3_nut_slot_cutout_v(z=90,l=30,r=0);

    translate([5,15,27]) m3_cap_cutout_h(z=90,l=3);
    translate([5,15,0]) m3_hole_cutout_h(z=90,l=30);
    translate([5,15,0]) m3_nut_cutout_h(z=90,l=3);
    translate([25,15,0]) m3_nut_slot_cutout_h(z=90,l=30,r=90);
}
