use<grouser.scad>;
difference(){
    grouser(-30, 0);
    translate([-30, 0, 0]){
        square([30, 272]);
    }
}