int n = 7; // Changing this number should upadate the grid

void setup(){
  // Do all your drawing here OR if the drawing is complex, in new methods
  // called from here.
  size(600, 400);
  
}

void draw(){
  float len_x = width/n;
  float len_y = height/n;
  float x = 0;
  float y = 0;
  while (x < width){
    line(x, 0, x, height);
    x += len_x;
  }
  while (y < height){
    line(0, y, width, y);
    y += len_y;
  }
  // This line will save your drawing to a file.  Please include the file with
  // your submission.
  save("grid-"+7+".png");
}
