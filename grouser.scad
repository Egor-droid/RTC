module grouser(x1, x2){
    difference(){
        intersection(){
            cylinder(272, 32);
            translate([x1, 272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)), 0]){
                cylinder(544, 32);
            }
        }
        translate([0, 258, 0]){
            cube([272, 530, 32]);
        }
        translate([x2, 272*sqrt(5)*cos(180-0.5*acos(258/272)-atg(2)), 0]){
            cylinder(544, 32);
        }
    }
}