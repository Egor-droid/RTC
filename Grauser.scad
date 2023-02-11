module cycloid(x, r){
    translate([(x+(x*r^2-y*(16*r^2*(x^2+y^2)-(x^2+y^2-r^2)^2)^0.5)/(x^2+y^2))/2, (y+(y*r^2-(16*r^2*(x^2+y^2)-(x^2+y^2-r^2)^2)^0.5)/(x^2+y^2))/2, 0]){
        cylinder(32, r=2*r, $fn=360);
    }
}
module grouser(x1, x2, r=272, w=0){
    difference(){
        intersection(){
            cylinder(32, r=r, $fn=360);
            cycloid(r, x1);
        }
        cycloid(r, x2);
        if(w){
           cylinder(32, r=4); 
        }else{
           cube([272, 258, 32]); 
        }
    }
}