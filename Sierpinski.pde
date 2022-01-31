void sierpinski(float x1, float y1, float x2, float y2, float x3, float y3, int iterations){
  // The variable iterations should be used to know when to stop
  float midx1, midy1, midx2, midy2, midx3, midy3;
  if(iterations >  0) {
    triangle(x1, y1, x2, y2, x3, y3);
    midx1 = (x1 + x2) / 2;
    midy1 = (y1 + y2) / 2;
    midx2 = (x2 + x3) / 2;
    midy2 = (y2 + y3) / 2;
    midx3 = (x3 + x1) / 2;
    midy3 = (y3 + y1) / 2;
    sierpinski(x1, y1, midx1, midy1, midx3, midy3, iterations-1);
    sierpinski(midx1, midy1, x2, y2, midx2, midy2, iterations-1);
    sierpinski(midx3, midy3, midx2, midy2, x3, y3, iterations-1);
    
    // HINT how do you calculate the midpoint of a line?

    // HINT for each iteration, you need to draw three smaller triangles
}
  //
}

void setup(){
  // Do all your drawing here OR if the drawing is complex, in new methods
  // called from here.
  
  size(800,800);
  sierpinski(0, 700, 400, 0, 800, 700, 10);
  // This line will save your drawing to a file.  Please include the file with
  // your submission.
  save("sierpinski.png");
}
