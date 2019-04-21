$fn=180;
o = max(62/72,52/62);
o=.88;
echo(o);
r1=31;
r2=36;
wall=1.6;
spacing=72*o+wall;
s_h=30;
//s_h=2;

holder();
translate([spacing,0,0]) holder();
module holder() {
scale([o,1,1]) {
    difference() {
        cylinder(r1=r1+wall,r2=r2+wall,h=35+wall);
        translate([0,0,wall]) cylinder(r1=31,r2=36,h=35);
    }
    translate([0,0,35+wall]) difference() {
        cylinder(r=r2+wall,h=s_h);
        cylinder(r=r2,h=s_h);
    }
}
}
//russ dunkly