//od=22mm, id=8mm
//w=7mm
$fn=90;
difference() {
rotate_extrude() polygon(points=[
[0,0],
[0,7],
[13,7],
[12,5],
[12,2],
[13,0]
]);
cylinder(h=7,d=22.1);
}