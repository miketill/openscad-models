$fn=60;
l=42;
h=77;
w=23.4;
wall=.45*2;
tol=.1;

difference() {
    hull() {
        cylinder(h=h-10,d=w+wall*4+tol);
        translate([l-w,0,0]) cylinder(h=h-10,d=w+wall*4+tol);
    }
    translate([0,0,wall]) hull() {
        cylinder(h=h-10,d=w+wall*2+tol);
        translate([l-w,0,0]) cylinder(h=h-10,d=w+wall*2+tol);
    }
}

difference() {
    translate([0,w+10,0]) hull() {
        cylinder(h=h,d=w+wall*2);
        translate([l-w,0,0]) cylinder(h=h,d=w+wall*2);
    }
    translate([0,w+10,wall]) hull() {
        cylinder(h=h,d=w);
        translate([l-w,0,0]) cylinder(h=h,d=w);
    }
}
