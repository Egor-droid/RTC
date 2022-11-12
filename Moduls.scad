module wheel(r, x1, x2){
    difference(){
        intersection(){
            cylinder(32, r=r, $fn=360);
            translate([2*sqrt(r*r-x1*x1), 2*x1-r, 0]){
                cylinder(32, r=2*r, $fn=360);
            }
        }
        cylinder(32, r=4);
        translate([2*sqrt(r*r-x2*x2), 2*x2-r, 0]){
            #cylinder(32, r=2*r, $fn=360);
        }
    }
}
module leg(x1, x2){
    difference(){
        wheel(272, x1, x2);
        cube([272, 258, 32]);
    }
}