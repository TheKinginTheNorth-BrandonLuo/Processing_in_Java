class Car {
 private float x;
 private float y;
 private float speed;
 
 Car(float x, float y, float speed){
   this.x = x;
   this.y = y;
   this.speed = speed;
 }
  
 void move(){
   x = x + speed;
   if (x > width){
     exit();
     saveFrame("photo-finish.png.png"); 
   }
   // HINT 1 - you should check whether the car has reached the edge of the screen in this method
   // HINT 2 - when the car does reach the end, call the save function and then call exit() to end the program
   //          otherwise, each car will overwrite the image when it reaches the end of the screen

 }
 
 void drawCar1(){
    fill(#f02929);
    rect(x + 5, y + 0,15,10);
    rect(x + 45, y+ 0,15,10);
    rect(x + 5, y+ 30,15,10);
    rect(x + 45,y + 30,15,10);

    fill(#cc6900);
    rect(x+0,y+5, 60, 30);

    fill(216, 216, 243);
    rect(x+50, y+7, 10, 26);
 }
 void drawCar2(){
    fill(#f029d5);
    rect(x + 5, y + 0,15,10);
    rect(x + 45, y+ 0,15,10);
    rect(x + 5, y+ 30,15,10);
    rect(x + 45,y + 30,15,10);

    fill(#5adae6);
    rect(x+0,y+5, 70, 30);

    fill(216, 216, 243);
    rect(x+50, y+7, 10, 26);
 }
 void drawCar3(){
    fill(#e9f029);
    rect(x + 5, y + 0,15,10);
    rect(x + 45, y+ 0,15,10);
    rect(x + 5, y+ 30,15,10);
    rect(x + 45,y + 30,15,10);

    fill(#29f040);
    rect(x+0,y+5, 70, 30);

    fill(216, 216, 243);
    rect(x+50, y+7, 10, 26);
 }
}
