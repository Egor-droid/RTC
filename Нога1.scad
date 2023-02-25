use<Grouser.scad>;
difference(){
    grouser(0, 25);
    translate([-30, 0, 0]){
        cube([30, 272, 32]);
    }
}