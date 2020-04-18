mount_width=18;
mount_height=70;
mount_thick=3;

top_mount();
//translate([40,0]) bottom_mount();
translate([40,0]) faceplate();


module post_hole() {
    difference() {
        cylinder($fn=60, r=1.6,h=4.5);
        cylinder($fn=60, d=1.6,h=4.5);
    }
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

module top_mount() {
    $fn=60;
    translate([5,0,0]) {
        difference() {
            cube([mount_width, mount_height, mount_thick]);
            translate([mount_width/2, mount_height/2, 0]) top_coutout();
        }
    }
    plate_height=63.4-9.16+3.2;
    translate([0,9.16-1.6,0]) {
        difference() {
            union() {
                cube([5,plate_height,3]);
                translate([5+bottom_width,0]) cube([5,plate_height,3]);
            }
            translate([2,2]) cylinder(d=2.2,h=10);
            translate([2,plate_height-2]) cylinder(d=2.2,h=10);
            translate([5+bottom_width,0]) {
                translate([3,2]) cylinder(d=2.2,h=10);
                translate([3,plate_height-2]) cylinder(d=2.2,h=10);
            }
        }
    }
}

bottom_width=18;
module bottom_mount() {
    plate_height=63.4-9.16+3.2;
    translate([5,0,0]) {
        difference() {
            translate([0,9.16-1.6]) cube([bottom_width, 63.4-9.16+3.2,2]);
            translate([4.5,63.4-9.16+3.2]) cube([bottom_width-9, 63.4-9.16+3.2,2]);
            translate([1.5,9.16+4.5,0]) cube([15, 15, 2]);
            translate([1.5,9.16+4.5+14+13,0]) cube([15, 15, 2]);
            translate([bottom_width-2.5,9.16,0]) cylinder($fn=60,d=1.6,h=4.5);
            translate([2.5,63.4,0]) cylinder($fn=60,d=1.6,h=4.5);
            translate([bottom_width-2.5,63.4,0]) cylinder($fn=60,d=1.6,h=4.5);
        }
        translate([1.2,9.16,0]) cylinder($fn=60,r=1.2,h=4.5);
        translate([1.2,9.16+4.5+14+6.5,0]) cylinder($fn=60,r=1.2,h=4.5);
        translate([board_width-1.2,9.16+4.5+14+6.5,0]) cylinder($fn=60,r=1.2,h=4.5);
        translate([board_width-2.5,9.16,0]) post_hole();
        translate([2.5,63.4,0]) post_hole();
        translate([board_width-2.5,63.4,0]) post_hole();
    }
    translate([0,9.16-1.6,0]) {
        cube([5,plate_height,2]);
        cube_post();
        translate([0,plate_height-4]) cube_post();
        translate([5+bottom_width,0]) {
            cube([5,plate_height,2]);
            translate([1,0]) cube_post();
            translate([1,plate_height-4]) cube_post();
        }
    }
}

module cube_post() {
    $fn=60;
    difference() {
        cube([4,4,10]);
        translate([2,2]) cylinder(d=1.9,h=10);
    }
}

//DNA CUTOUTS
board_width=18;
board_height=66+2.27+2.9/2;
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

module co_lcd_top(top_face=false) {
    lcd_width=16.5;
    lcd_height=27;
    co_height=10;

    if (top_face) {
        lcd_width = lcd_width-2;
        lcd_height = lcd_height-2;
        translate([-lcd_width/2,-lcd_height/2,0]) {
            translate([0,lcd_height*.8,-1]) cube([lcd_width,lcd_height*.2,co_height]);
            cube([lcd_width,lcd_height,co_height]);
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

module co_nav_button_face() {
    co_height=10;
    botton_radius=2.2;
    botton_lip_radius=2.75;
    cylinder($fn=60,r=botton_radius,h=10);
    translate([0,0,1]) cylinder($fn=60,r=botton_lip_radius,h=co_height);
}

module co_nav_button_post() {
    co_height=10;
    botton_radius=1.2;
    botton_lip_radius=2.75;
    cylinder($fn=60,r=botton_radius,h=10);
    translate([0,0,1.6]) cylinder($fn=60,r=botton_lip_radius,h=co_height);
}

module co_fire_button_face() {
    co_height=10;
    botton_radius=4.2;
    botton_lip_radius=5.25;
    cylinder($fn=60,r=botton_radius,h=10);
    translate([0,0,1]) cylinder($fn=60,r=botton_lip_radius,h=co_height);
}
module co_fire_button_post() {
    co_height=10;
    botton_radius=2.5;
    botton_lip_radius=5.25;
    cylinder($fn=60,r=botton_radius,h=10);
    translate([0,0,1.6]) cylinder($fn=60,r=botton_lip_radius,h=co_height);
}
