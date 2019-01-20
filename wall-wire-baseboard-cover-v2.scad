//6.5mm deep
//23mm to hole
//
$fn=60;
length=180;
lip=20;
base_height=15;
base_over=5;
wire_height=15;
top_depth=12;
wrap_height=5;
thickness=.9;

rotate([0,90,0]) translate([-length,0,0]) union() {
    difference() {
        union() {
            //*
            union() {
                cube([length,thickness,base_height]);
                translate([0,-base_over+thickness,base_height-thickness]) cube([length,base_over,thickness]);
                translate([0,-base_over,base_height-thickness]) cube([length,thickness,wire_height+thickness]);
                translate([0,-base_over,base_height+wire_height]) cube([length,top_depth+thickness,thickness]);
                translate([0,top_depth-base_over+thickness,base_height+wire_height-wrap_height]) cube([length,thickness,wrap_height+thickness]);
            }
            //*/

            //*
            translate([-lip/2,-thickness,0]) union() {
                cube([lip,thickness,base_height-thickness]);
                translate([0,-base_over+thickness,base_height-thickness*2]) cube([lip,base_over,thickness]);
                translate([0,-base_over,base_height-thickness*2]) cube([lip,thickness,wire_height+thickness*3]);
                translate([0,-base_over,base_height+wire_height+thickness]) cube([lip,top_depth+thickness*3,thickness]);
            }
            //*/
        }
        translate([-5,-5,5]) rotate([0,90,90]) cylinder(d=1.6,h=10);
        translate([(length-10)/2,-5,5]) rotate([0,90,90]) cylinder(d=1.6,h=10);
        hull() {
            translate([length-4.5,-5,5]) rotate([0,90,90]) cylinder(d=1.6,h=10);
            translate([length-5.5,-5,5]) rotate([0,90,90]) cylinder(d=1.6,h=10);
        }
    }
}

/*
   difference() {
   union() {
   cube([length,1,8]);
   cube([length,25,1]);
   }
   translate([5,21,-5]) cylinder(d=2,h=10);
   if (length > 20) {
   for(i=[1:floor(length/20)-1]) {
   translate([20*i,21,-5]) cylinder(d=2,h=10);
   }
   }
   translate([length-5,21,-5]) cylinder(d=2,h=10);
   }
   */
