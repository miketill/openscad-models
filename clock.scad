//*
$fn=60;
deg_sep=-360/13;
radius=70;
difference() {
    /*
    cylinder($fn=180, r=radius+20+1, h=25);
    cylinder($fn=180, r=radius+20-2, h=25);
    translate([0,0,1]) cylinder($fn=180, r=radius+20, h=25);
    //*/

    //*
    cylinder($fn=180, r=radius+20, h=2);
    for(n=[1:13]){
        translate([sin(deg_sep*n)*radius,cos(deg_sep*n)*radius,1])
            linear_extrude(2) text(text=str(n), size=20, valign="center", halign="center");
    }
    cylinder(d=8.2, h=4);
    //*/

    /*
    cylinder($fn=180, r=radius+20, h=2);
    for(n=[1:13]){
        translate([sin(deg_sep*n)*radius,cos(deg_sep*n)*radius,1])
            linear_extrude(2) text(text=str(n), size=20, valign="center", halign="center");
    }
    cylinder(d=8.2, h=4);
    //*/

    /*
    for(n=[1:13]){
        translate([sin(deg_sep*n)*radius,cos(deg_sep*n)*radius,3])
            linear_extrude(2) text(text=str(n), size=20, valign="center", halign="center");
    }
    //*/
}
