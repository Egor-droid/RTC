use<Grouser.scad>;
difference(){
    grouser(-30, 0);
    translate([-30, 0, 0]){
        cube([30, 272, 32]);
    }
}