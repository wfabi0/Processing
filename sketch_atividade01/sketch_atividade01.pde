int lines[];
boolean line;

int distance = 50;

void setup(){
  size(800, 600);
  lines = new int[4];
  for(int i = 0; i < 4; i++){
    lines[i] = 0;
  }
  line = true;
}

void draw(){
  if(lines[0] >= 800) return;
  stroke(1);
  strokeWeight(3);
  line(lines[0], lines[1], lines[2], lines[3]);
  lines[0] = lines[2]; // 0 = 0
  lines[1] = lines[3];
  lines[2] += distance;
  if(line){
    lines[3] += distance;
    fill(0);
    textSize(15);
    text("+" + distance, lines[0] - 10, lines[1] + (distance - 20));
    line = false;
  } else {
    lines[3] -= distance;
    fill(0);
    textSize(15);
    text("-" + distance, lines[0] - 10, lines[1] + (distance - 70));
    line = true;
  }
}
