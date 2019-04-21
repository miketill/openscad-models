d=18.2;
spacing=.4;
wall=.8;
rows=3;
cols=7;
width=wall*2+spacing*(cols-1)+d*cols;
depth=wall*2+spacing*(rows-1)+d*rows;
height=5;

difference() {
cube([width,depth,height]);
for(x=[0:cols-1],y=[0:rows-1]) {
  x_off = wall+x*(d+spacing)+d/2;
  y_off = wall+y*(d+spacing)+d/2;
  translate([x_off,y_off,1]) cylinder($fn=90,d=d,h=10);
}
}
