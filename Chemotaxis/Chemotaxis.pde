int NE = 2;
int NW = 1;
int SW = 4;
int SE = 3;
People[] crowdPeople;
People p1;


//declare bacteria variables here  

void setup() {     
  size(800, 800);
  background(#767373);
  noStroke();
  crowdPeople = new People[50];
   for (int i = 0; i < crowdPeople.length; i++) {

    int x = (int)(width * Math.random());
    int y = 750;
    crowdPeople[i] = new People(x, y);
    }
    
}

void draw() {
  fill(#767373);
  rect(0,0,width,height);
  shibuyaBackground();
  
    for (int i = 0; i < crowdPeople.length; i++) {
      crowdPeople[i].move();
      crowdPeople[i].show();
    }
}

//Begin People Class
class People {
  float x_pos;
  float y_pos; 

  public People(float x,float y) {
  x_pos = x;
  y_pos = y; 
  }
  
  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(#D63248);
    ellipse(0,0,35,35);
    popMatrix();
  }
  
  void move() {
    y_pos = y_pos - (int)(6 * Math.random());
    x_pos = x_pos + (int)(5 * Math.random());
    x_pos = x_pos - (int)(5 * Math.random());
    if (y_pos < 0){
      y_pos = height;
    }
    
    if (x_pos < 0){
      x_pos = width;
    }
  }
} // end of the people class

//start of the background...
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
} //end of shibuyaBackground..
