module grouser(x1, x2){
    difference(){
        intersection(){
            cylinder(32, r=272);
            translate([sqrt(295936-(258-272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)))^2)+x1, 272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)), 0]){
                cylinder(32, r=544);
            }
        }
        translate([-272, -272, 0]){
            cube([544, 530, 32]);
        }
        translate([sqrt(295936-(258-272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)))^2)+x2, 272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)), 0]){
            cylinder(32, r=544);
        }
    }
}