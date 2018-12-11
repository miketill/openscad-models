$fn=360;
bwidth=66;
twidth=72;
sheight=70;
theight=20;

difference() {
cylinder(h=sheight,r1=bwidth/2,r2=twidth/2);
translate([0,0,2]) cylinder(h=sheight,r1=bwidth/2-2,r2=twidth/2-2);
}
difference() {
translate([0,0,sheight]) cylinder(h=theight,r=twidth/2);
translate([0,0,sheight]) cylinder(h=theight,r=twidth/2-2);
}

translate([twidth+20,0,0]) {
    difference() {
        union() {
            cylinder(h=5, d=twidth-4-1.8);
            translate([0,0,5])
                cylinder(h=2,d=twidth);
            cylinder(25,d1=50,d2=75);
        }
        cylinder(25,d1=46,d2=71);
    }
}