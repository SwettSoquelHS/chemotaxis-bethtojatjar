int NE = 2;
int NW = 1;
int SW = 4;
int SE = 3;

//declare bacteria variables here  

void setup() {     
  size(800, 800);
  background(#767373);
  noStroke();
}   
void draw() {
  shibuyaBackground();
  //move and show the bacteria
}  
class Crosswalk {     
  //lots of java!

  void shibuyaBackground() {
    stroke(#FADE3F);
    strokeWeight(5);
    fill(#B4B4B4);
    rect(625, 625, 300, 300, 125);
    rect(625, -150, 300, 300, 125);
    rect(-130, -150, 300, 300, 125);
    rect(-130, 625, 300, 300, 125);

    stroke(#DED9D9);
    for (int i = 0; i < 450; i+= 35) {
      fill(#DED9D9);
      rect (177 + i, 725, 18, 300);
    }

    for (int i = 0; i < 450; i+= 35) {
      fill(#DED9D9);
      rect (-225, 165 + i, 300, 20);
    }

    for (int i = 0; i < 450; i+= 35) {
      fill(#DED9D9);
      rect (177 + i, -225, 20, 300);
    }

    for (int i = 0; i < 450; i+= 35) {
      fill(#DED9D9);
      rect (725, 165 + i, 300, 20);
    }

    pushMatrix();
    translate(218, 100);
    rotate(44.8);
    for (int i = 0; i < 675; i+= 41) {
      fill(#DED9D9);
      rect (0 + i, 0, 18, 150);
    }
    popMatrix();
  }

  void move();
  {
  }
}
