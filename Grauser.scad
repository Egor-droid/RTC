module cycloid(x, r){
    translate([(x*(r*r+x*x+y*y)-y*sqrt((x*x+y*y)*(18*r*r-x*x-y*y)-pow(r, 4))/(x*x+y*y)/2, , 0]){
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