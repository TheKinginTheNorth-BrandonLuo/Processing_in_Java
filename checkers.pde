/2D array of buttons
Button[][] buttons;
//width and height of one button
final int BTN_SIZE = 80;
//number of buttons in each row/column
final int GRID_SIZE = 8;

void setup() {
    //initializing 2D array
    buttons = new Button[GRID_SIZE][GRID_SIZE];
    //using compact size
    size(660,660);
    //using black and white colors for the buttons, change this with any two colors you like
    color colors[] = {color(0),color(255)};
    int colIndex = 0; //index of current color chosen
    //looping through each row and col
    for(int i=0;i<GRID_SIZE;i++){
      for(int j=0;j<GRID_SIZE;j++){
        //initializing button at i,j with (j*BTN_SIZE)+10 as x coordinate, (i*BTN_SIZE)+10 as y coordinate,
        //BTN_SIZE as width and height, and color at colIndex as fill color
        buttons[i][j] = new Button(10+ j*BTN_SIZE, 10+ i*BTN_SIZE, BTN_SIZE,BTN_SIZE, colors[colIndex]);
        colIndex=(colIndex+1)%2;
      }
      //advancing colIndex by 1, wrapping around from 0 (in other words making it 0 if it is currently 1, 
      //or making it 1 if it is currently 0)
      colIndex=(colIndex+1)%2;
    }
    //just like rectangle, setting anchor of ellipse in the top left corner (so that x,y coordinates passed
    //to ellipse method will be taken as top left coordinates instead of center)
    ellipseMode(CORNER);
}

class Button {
    float leftPos;
    float topPos;
    float btnWidth;
    float btnHeight;
    boolean on = false;
    //adding one extra attribute
    color fillColor;
    //modified constructor to accept one extra attribute
    Button(float leftPos, float topPos, float btnWidth, float btnHeight, color col) {
        this.leftPos = leftPos;
        this.topPos = topPos;
        this.btnWidth = btnWidth;
        this.btnHeight = btnHeight;
        this.fillColor=col;
    }
    boolean isClicked() {
        return (mouseX > leftPos && mouseY > topPos && mouseX < leftPos + btnWidth &&
                mouseY < topPos + btnHeight);
    }
    void toggleOnOff() {
        this.on = !this.on;
    }
    void draw() {
        //using given fill color
        fill(fillColor);
        //drawing rectangle
        rect(leftPos, topPos, btnWidth, btnHeight);
        //if on is true, drawing a red circle over the button
        if(on) {
            fill(255,0,0);
            ellipse(leftPos, topPos, btnWidth, btnHeight);
        } 
    }
}

void mousePressed() {
    //looping through each btn in the grid to check for mouse click
    for(int i = 0; i < GRID_SIZE; i++) {
      for(int j=0;j<GRID_SIZE;j++){
        if(buttons[i][j].isClicked()) {
              buttons[i][j].toggleOnOff();
          }
      } 
    }
}

void draw() {
    fill(0);
    background(255);
    //looping through each btn in the grid and calling draw method
    for(int i = 0; i < GRID_SIZE; i++) {
      for(int j=0;j<GRID_SIZE;j++){
        buttons[i][j].draw();
      } 
    }
}
