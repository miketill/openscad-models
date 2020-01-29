$fn=360;
bwidth=66;
twidth=72;
sheight=70;
theight=20;

difference() {
cylinder(h=sheight,r1=bwidth/2,r2=twidth/2);
translate([bwidth/2-15,0,1]) cylinder(h=sheight+20,d=25);
translate([-bwidth/2+15,0,1]) cylinder(h=sheight+20,d=25);
}
difference() {
translate([0,0,sheight]) cylinder(h=theight,r=twidth/2);
translate([0,0,sheight]) cylinder(h=theight,r=twidth/2-2);
}
