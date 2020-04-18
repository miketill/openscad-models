wall=1.5;

n_x = 2;
n_y = 4;

module base_box(w_x,w_y,h) {
    difference() {
        cube([w_x,w_y,h]);
        translate([wall,wall,.6]) cube([w_x-wall*2,w_y-wall*2,h]);
    }
}

for (x=[0:n_x-1],y=[0:n_y-1]) {
    t_x = 40*x-x*wall;
    t_y = 40*y-y*wall;
    echo(t_x,t_y);
    translate([t_x,t_y,0]) base_box(40,40,20);
}
