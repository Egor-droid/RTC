module cycloid(x, r){
    translate([x/2+(x*r^2/2-129*(16*r^2*(x^2+66564)-(x^2+66564-r^2)^2)^0.5)/(x^2+66564), 129+(129*r^2-(4*r^2*(x^2+33282)-((x^2-r^2)/2+66564)^2)^0.5)/(x^2+66564), 0]){
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