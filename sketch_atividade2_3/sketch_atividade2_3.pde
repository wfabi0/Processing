PFont font;

int bg1 = 135, bg2 = 206, bg3 = 235;
int sun = 82;
int grass1 = 100, grass2 = 201, grass3 = 2;
int sign1 = 150, sign2 = 75, sign3 = 0;
int cloud1 = 255, cloud2 = 255, cloud3 = 255;

int Aww1 = 245, Aww2 = 56, Aww3 = 56;
int Bww1 = 236, Bww2 = 245, Bww3 = 56;
int Cww1 = 75, Cww2 = 245, Cww3 = 56;
int Dww1 = 56, Dww2 = 154, Dww3 = 245;
int Eww1 = 255, Eww2 = 255, Eww3 = 255;

float wwSize = 50, wwX = 700, wwY = 470;
float rotationAngle = 0;
boolean direction;

String text = "Uberlandia";

void setup() {
  size(800,600);
  font = loadFont("CorbelLight-Italic-48.vlw");
  direction = true;
}

void draw() {
  background(bg1, bg2, bg3);
  
  fill(247, 218, 87);
  noStroke();
  circle(90, sun, 150);
  
  fill(cloud1, cloud2, cloud3);
  circle(500, 85, 70);
  fill(cloud1, cloud2, cloud3);
  circle(470, 85, 55);
  fill(cloud1, cloud2, cloud3);
  circle(530, 85, 55);
  
  fill(grass1, grass2, grass3);
  ellipse(244,570,1400,500);
  
  fill(sign1, sign2, sign3);
  beginShape();
  vertex(400, 200);
  vertex(405, 200);
  vertex(405, 400);
  vertex(400, 400);
  endShape(CLOSE);
  beginShape();
  vertex(400, 200);
  vertex(500, 200);
  vertex(525, 225);
  vertex(500, 250);
  vertex(500, 250);
  vertex(400, 250);
  endShape(CLOSE);
  fill(255, 255, 255);
  textFont(font);
  textSize(25);
  text(text, 406, 233);
  
  fill(color(Eww1, Eww2, Eww3));
  rect(700, 470, 5, 60);
 
  pushMatrix();
  
    translate(700, 470);
    rotate(rotationAngle);
    
    fill(color(Aww1, Aww2, Aww3));
    beginShape();
    vertex(700 - wwX, 470 - wwY);
    vertex(700 - wwX, (470  - wwY) - wwSize * 0.85);
    vertex((700 - wwX) - (int)(wwSize  * 0.4), (470 - wwY) - (int)(wwSize * 0.4));
    vertex((700 - wwX) - (int)(wwSize * 0.4), 470 - wwY);
    vertex(700 - wwX, 470 - wwY);
    endShape(CLOSE);
    
    fill(color(Bww1, Bww2, Bww3));
    beginShape();
    vertex(700 - wwX, (470 - wwY) - (int)(wwSize * 0.4));
    vertex((700 - wwX) + (int)(wwSize * 0.4), (470 - wwY) - (int)(wwSize * 0.4));
    vertex((700 - wwX) + (int)(wwSize * 0.8), 470 - wwY);
    vertex(700 - wwX, 470 - wwY);
    vertex(700 - wwX, (470 - wwY) - wwSize);
    endShape(CLOSE);
    
    fill(color(Cww1, Cww2, Cww3));
    beginShape();
    vertex(700 - wwX, 470 - wwY);
    vertex((700 - wwX) + (int)(wwSize * 0.4), 470 - wwY);
    vertex((700 - wwX) + (int)(wwSize * 0.4), (470 - wwY) + (int)(wwSize * 0.4));
    vertex(700 - wwX, (470 - wwY) + (int)(wwSize * 0.8));
    vertex(700 - wwX, 470 - wwY);
    endShape(CLOSE);
    
    fill(color(Dww1, Dww2, Dww3));
    beginShape();
    vertex(700 - wwX, 470 - wwY);
    vertex((700 - wwX) - (int)(wwSize * 0.8), 470 - wwY);
    vertex((700 - wwX) - (int)(wwSize * 0.4), (470 - wwY) + (int)(wwSize * 0.45));
    vertex(700 - wwX, (470  - wwY) + (int)(wwSize * 0.45));
    vertex(700 - wwX, 470 - wwY);
    endShape(CLOSE);
  
  popMatrix();
  
  if(direction){
    rotationAngle += random(0.1);
  }else {
    rotationAngle -= random(0.1);
  }
  if(rotationAngle >= TWO_PI){
    rotationAngle -= TWO_PI;
  }
  
  fill(0,0,0);
  circle(702, 470, 15);
  
  bg1--;
  bg2--;
  bg3--;
  if(sun < 450) {
    sun += 2;
  }
  grass1--;
  grass2--;
  grass3--;
  sign1--;
  sign2--;
  sign3--;
  cloud1--;
  cloud2--;
  cloud3--;
  Aww1--; Aww2--; Aww3--;
  Bww1--; Bww2--; Bww3--;
  Cww1--; Cww2--; Cww3--;
  Dww1--; Dww2--; Dww3--;
  Eww1--; Eww2--; Eww3--;
  if(sign1 <= -100){
    text = "Tchau!!!";
  }
}
