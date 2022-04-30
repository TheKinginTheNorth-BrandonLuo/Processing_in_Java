class Car {
 private float x;
 private float y;
 private float speed;
 private color c;
 private float lenth;
 
 
 Car(float x, float y, float speed, color c, float lenth){
   this.x = x;
   this.y = y;
   this.speed = speed;
   this.c = c;
   this.lenth = lenth;
 }
  
 void move(){
   x = x + speed;
   if ((x + lenth) > width){
     exit();
     saveFrame("photo-finish.png.png"); 
   }
   // HINT 1 - you should check whether the car has reached the edge of the screen in this method
   // HINT 2 - when the car does reach the end, call the save function and then call exit() to end the program
   //          otherwise, each car will overwrite the image when it reaches the end of the screen

 }
 
 void drawCar(){
    fill(0);
    rect(x + 5, y + 0, 15, 10);
    rect(x + lenth - 15, y+ 0, 15, 10);
    rect(x + 5, y + 30, 15, 10);
    rect(x + lenth - 15, y + 30, 15, 10);
    
    fill(c);
    rect(x + 0,y + 5,lenth + 10, 30);
    
    fill(216,216,243);
    rect(x + lenth - 10, y + 7, 10, 26);
 }
}
