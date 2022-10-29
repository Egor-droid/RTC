module wheel(r, x1, x2){
    difference(){
        intersection(){
            cylinder(32, r);
            translate([2*sqrt(r*r-x1*x1), 2*x1, 0]){
                cylinder(32, 2*r);
            }
        }
        translate([2*sqrt(r*r-x2*x2), 2*x2, 0]){
            cylinder(32, 2*r);
        }
        translate([0, -7.5, 0]){
            cylinder(32, 1.5);
        }
    }
}