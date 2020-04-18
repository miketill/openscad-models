board_height=66+2.27+2.9/2;
bottom_width=18;
board_width=18;
mount_height=70;
mount_width=18;

box_top();
//box_bottom();

module box_bottom() {
    lip=4;
    wall=3;
    width=150+wall*2;
    height=100+wall*2;
    depth=30;

    difference() {
        union() {
            difference() {
                union() {
                    cube([width,height,depth-wall]);
                    cp = [
                        [0,0,depth-wall],
                        [width,0,depth-wall],
                        [width,height,depth-wall],
                        [0,height,depth-wall],
                        [wall,wall,depth],
                        [width-wall,wall,depth],
                        [width-wall,height-wall,depth],
                        [wall,height-wall,depth],
                    ];
                        cf = [
                            [0,1,2,3],
                            [4,5,1,0],
                            [7,6,5,4],
                            [5,6,2,1],
                            [6,7,3,2],
                            [7,4,0,3],
                        ];
                            polyhedron(cp,cf);
                }
                translate([lip+wall, lip+wall, wall]) cube([width-(lip+wall)*2,height-(lip+wall)*2,depth]);
                translate([wall,wall,depth-2]) cube([150,100,2]);
                $fn=60;
                pin_offset=wall+lip/2;
                translate([pin_offset,pin_offset,depth-10]) cylinder(d=1.9,h=10);
                translate([width-pin_offset,pin_offset,depth-10]) cylinder(d=1.9,h=10);
                translate([pin_offset,height-pin_offset,depth-10]) cylinder(d=1.9,h=10);
                translate([width-pin_offset,height-pin_offset,depth-10]) cylinder(d=1.9,h=10);
            }
            translate([width-wall-lip-5-23, height-70, wall]) cube([23,70,23/2]);
        }
        translate([width-wall-lip-5-23, height-70, wall]) translate([23/2,100,23/2-wall]) rotate([90,0,0]) cylinder($fn=90,d=21,h=100);
        translate([width-wall-lip-5-23, height-7, wall+1]) translate([23/2,100,23/2-wall]) rotate([90,0,0]) cylinder($fn=90,d=23,h=100);
    }
}

module box_top() {
    difference() {
        cube([150,100,2]);
        translate([45,15,0]) cube([board_width+10,board_height,2]);
        translate([120,50]) cylinder(d=10.5,h=2);
        $fn=60;
        pin_offset=2;
        translate([pin_offset,pin_offset,0]) cylinder(d=1.9,h=10);
        translate([150-pin_offset,pin_offset,0]) cylinder(d=1.9,h=10);
        translate([pin_offset,100-pin_offset,0]) cylinder(d=1.9,h=10);
        translate([150-pin_offset,100-pin_offset,0]) cylinder(d=1.9,h=10);
    }
    translate([45,15,0]) faceplate();
}
module faceplate() {
    plate_height=63.4-9.16+3.2;
    hole_y_off=9.16-1.6;
    $fn=60;
    translate([5,0,0]) {
        difference() {
            cube([mount_width, mount_height, 2]);
            translate([mount_width/2, mount_height/2, 0]) top_coutout(true);
        }
    }
    difference() {
        union() {
            cube([5,70,2]);
            translate([5+bottom_width,0]) cube([5,70,2]);
        }
        translate([2,2+hole_y_off]) cylinder(d=2.2,h=10);
        translate([2,hole_y_off+plate_height-2]) cylinder(d=2.2,h=10);
        translate([5+bottom_width,0]) {
            translate([3,2+hole_y_off]) cylinder(d=2.2,h=10);
            translate([3,hole_y_off+plate_height-2]) cylinder(d=2.2,h=10);
        }
    }
}

module top_coutout(faceplate) {
    translate([-board_width/2,-board_height/2]) {
        translate([board_width/2, 2.27+2.9/2]) co_usb();
        translate([board_width/2,40]) co_lcd_top(true && faceplate);
        if (faceplate) {
            translate([board_width/2,62]) co_fire_button_face();
            translate([board_width/2,8.9]) co_nav_button_face();
            translate([board_width/2,15.45]) co_nav_button_face();
            translate([board_width/2,22.01]) co_nav_button_face();
        }
        else {
            translate([board_width/2,62]) co_fire_button_post();
            translate([board_width/2,8.9]) co_nav_button_post();
            translate([board_width/2,15.45]) co_nav_button_post();
            translate([board_width/2,22.01]) co_nav_button_post();
        }
    }

}

module co_nav_button_face() {
    co_height=10;
    botton_radius=2.2;
    botton_lip_radius=2.75;
    cylinder($fn=60,r=botton_radius,h=10);
    translate([0,0,1]) cylinder($fn=60,r=botton_lip_radius,h=co_height);
}

module co_fire_button_face() {
    co_height=10;
    botton_radius=4.2;
    botton_lip_radius=5.25;
    cylinder($fn=60,r=botton_radius,h=10);
    translate([0,0,1]) cylinder($fn=60,r=botton_lip_radius,h=co_height);
}

module co_lcd_top(top_face=false) {
    lcd_width=16.5;
    lcd_height=27;
    co_height=10;

    if (top_face) {
        lcd_width = lcd_width-2;
        lcd_height = lcd_height-2;
        translate([-lcd_width/2,-lcd_height/2,0]) {
            cube([lcd_width,lcd_height-4,co_height]);
        }
    }
    else {
        translate([-lcd_width/2,-lcd_height/2,1]) {
            translate([2.5,lcd_height,-1]) cube([11,2,co_height]);
            translate([0,lcd_height*.8,-1]) cube([lcd_width,lcd_height*.2,co_height]);
            cube([lcd_width,lcd_height,co_height]);
        }
    }
}

module co_usb() {
    usb_width=8.5;
    usb_height=3.4;
    co_height=10;

    translate([-usb_width/2,-usb_height/2,0]) cube([usb_width,usb_height,co_height]);
}
