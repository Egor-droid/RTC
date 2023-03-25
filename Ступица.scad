difference(){
    circle(4, $fn=360);
    intersection(){
        circle(3, $fn=360);
        translate([-3, -2.7]){
            square(6);
        }
    }
}