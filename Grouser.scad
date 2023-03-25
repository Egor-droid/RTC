module cycloid(x, y, r){
    translate([x/2+(x*r^2-y*(16*r^2*(x^2+y^2)-(x^2+y^2-r^2)^2)^0.5)/(x^2+y^2)/2, y/2+(y/2*r^2-(4*r^2*(x^2+y^2/2)-((x^2-r^2)/2+y^2)^2)^0.5)/(x^2+y^2)]){
        cylinder(32, r=2*r, $fn=360);
    }
}
module grouser(x2=45*tan(360/65), x1=0, r=272, w=0){
    difference(){
        intersection(){
            cylinder(32, r=r, $fn=360);
            cycloid(x2, 258-213*w, r);
        }
        cycloid(x1, 258-213*w, r);
        if(w){
            cylinder(32, r=4, $fn=360); 
        }else{
            translate([-272, -272]){
                cube([544, 530, 32]);
            } 
        }
    }
}