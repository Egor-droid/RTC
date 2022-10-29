module leg(x1, x2){
    difference(){
        intersection(){
            circle(272, $fn=360);
            translate([sqrt(295936-(258-272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)))^2)+x1, 272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)), 0]){
                circle(544, $fn=360);
            }
        }
        translate([-272, -272, 0]){
            square([544, 530]);
        }
        translate([sqrt(295936-(258-272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)))^2)+x2, 272*sqrt(5)*cos(180-0.5*acos(258/272)-atan(2)), 0]){ 
            circle(544, $fn=360);
        }
    }
}
module wheel(r){
    difference(){
        circle(r, $fn=360);
        polygon([[-, r], [-8, -sqrt(r*r-64)], [0, 0], [8, -sqrt(r*r-64)], [, r]]);
        translate([0, -7.5, 0]){
            circle(1.5, $fn=360);
        }
    }
}