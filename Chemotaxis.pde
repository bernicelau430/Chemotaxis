Bacteria [] dots;
void setup() {
  size(500, 500);
  background(0);
  textSize(25);
  textAlign(CENTER, CENTER);
  dots = new Bacteria[20];
  for(int i = 0; i < dots.length;i++)
  {
    dots[i] = new Bacteria();
  }
}   
void draw() {
  for(int i = 0; i < dots.length;i++) {
    dots[i].walk();
    dots[i].show();
  }
}
class Bacteria {
  int x, y, myColorR, myColorG, myColorB;
  Bacteria() {
    x = 250;
    y = 250;
    myColorR = (int)(Math.random()*79)+176;
    myColorG = (int)(Math.random()*79)+176;
    myColorB = (int)(Math.random()*79)+176;
  }
  void walk() {
    int direction = (int)(Math.random()*4);
    if (direction == 0) {
      x = x + 20; //right
    }
    else if (direction == 1) {
      x = x - 20; //left
    }
    else if (direction == 2) {
      y = y + 20; //down
    }
    else {
      y = y - 20; //up
    }
  }
  void show() {
    fill(myColorR, myColorG, myColorB);
    ellipse(x, y, 50, 50);
  }
 }
