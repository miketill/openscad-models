rows=5;
cols=4;
rotate([0,0,90]) translate([0,-(rows*42),0]) {
    difference() {
        for (i = [0:(cols-1)]) {
            tx = i * 42;
            for (j = [0:(rows-1)]) {
                ty = j * 42;
                translate([tx,ty,0]){ 
                    difference() {
                        cube([42,42,10]);
                        translate([21-5.5,5,1]) cube([11,26,9]);
                        translate([21-12,42-7,2]) rotate([-20,0,0]) cube([24,3,10]);
                    }
                }
            }
        }
        //translate([45,42*5/2,9]) rotate([0,0,90]) linear_extrude(5) text("For my sweetheart", halign="center", size=12);
        translate([45,12,9]) rotate([0,0,45]) linear_extrude(5) text("Kiss", halign="center", size=10);
        translate([45,42*5-22,9]) rotate([0,0,45]) linear_extrude(5) text("Kiss", halign="center", size=10);

        //translate([87,42*5/2,9]) rotate([0,0,90]) linear_extrude(5) text("whom I love", halign="center", size=12);
        translate([87,12,9]) rotate([0,0,45]) linear_extrude(5) text("Kiss", halign="center", size=10);
        translate([87,42*5-22,9]) rotate([0,0,45]) linear_extrude(5) text("Kiss", halign="center", size=10);

        //translate([129,42*5/2,9]) rotate([0,0,90]) linear_extrude(5) text("always and forever", halign="center", size=12);
        translate([129,12,9]) rotate([0,0,45]) linear_extrude(5) text("Kiss", halign="center", size=10);
        translate([129,42*5-22,9]) rotate([0,0,45]) linear_extrude(5) text("Kiss", halign="center", size=10);
    }
}
