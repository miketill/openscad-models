$fn=360;
bwidth=66;
twidth=72;
sheight=70;
theight=20;
tube_d=26;
mini_d=25.5;
mini_l=43;



holder_2t1m();
//holder_2t();
//holder_2m();
//dicode_mini();
rim();

module holder_2t1m() {
    difference() {
        cylinder(h=sheight,r1=bwidth/2,r2=twidth/2);
        translate([0,-11,1]) {
            translate([-tube_d/2-2,0,0]) dicode_tube();
            translate([tube_d/2+2,0,0]) dicode_tube();
            translate([0,mini_d+2,1]) dicode_mini();
        }
        /*
           translate([bwidth/2-15,0,1]) dicode_tube();
           translate([-bwidth/2+15,0,1]) dicode_tube();
           */
        /*
           translate([0,mini_d/2+2,1]) dicode_mini();
           translate([0,-mini_d/2-2,1]) dicode_mini();
           */
    }
}

module holder_2m() {
    difference() {
        cylinder(h=sheight,r1=bwidth/2,r2=twidth/2);
        translate([0,mini_d/2+2,1]) dicode_mini();
        translate([0,-mini_d/2-2,1]) dicode_mini();
    }
}

module holder_2t() {
    difference() {
        cylinder(h=sheight,r1=bwidth/2,r2=twidth/2);
        translate([bwidth/2-15,0,1]) dicode_tube();
        translate([-bwidth/2+15,0,1]) dicode_tube();
    }
}

module rim() {
    difference() {
        translate([0,0,sheight]) cylinder(h=theight,r=twidth/2);
        translate([0,0,sheight]) cylinder(h=theight,r=twidth/2-2);
    }
}

module dicode_tube() {
    cylinder(h=sheight+20,d=tube_d);
}

module dicode_mini() {
    translate([-(mini_l-mini_d)/2,0,20]) {
        hull() {
            cylinder(h=sheight+20,d=mini_d);
            translate([mini_l-mini_d,0,0]) cylinder(h=sheight+20,d=mini_d);
        }
        translate([-mini_d/2-3,-4,0]) cube([10,8,sheight+200]);
        translate([mini_l-mini_d/2-7,-4,0]) cube([10,8,sheight+200]);
    }
}
