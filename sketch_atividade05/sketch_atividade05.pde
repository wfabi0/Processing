class Elipse {
  float px;
  float py;
  color cor;
  float tamanho;
  HashMap<String,Integer> direction = new HashMap<String,Integer>();
  
  Elipse(float x, float y, color c, float t){
    px = x;
    py = y;
    cor = c;
    tamanho = t;
    direction.put("x", (int)random(0, 2));
    direction.put("y", (int)random(0, 2));
  }
  
  void moviment() {    
    if(direction.get("x") == 0) {
      this.px--;
      if(this.px <= 50) {
        this.switchColor();
        direction.replace("x", 1);
      }
    } else {
      this.px++;
      if(this.px >= 750) {
        this.switchColor();
        direction.replace("x", 0);
      }
    }
    
    if(direction.get("y") == 0) {
      this.py--;
      if(this.py <= 50) {
        this.switchColor();
        direction.replace("y", 1);
      }
    } else {
      this.py++;
      if(this.py >= 550) {
        this.switchColor();
        direction.replace("y", 0);
      }
    }
  }
  
  void switchColor() {
    this.cor = color(random(0,255), random(0,255), random(0,255), random(0,255));
  }
  
}

int qtd;
int frame;
Elipse elipses[];

void setup() {
  size(800, 600);
  noStroke();
  frame = 0;
  qtd = 60;
  elipses = new Elipse[qtd];
  for(int i = 0; i < qtd; i++) {
    elipses[i] = new Elipse(
      random(50, 750), 
      random(50, 550), 
      color(random(0,255), random(0,255), random(0,255), random(0,255)), 
      random(10, 100)
    ); 
  }
}

void draw() {
  background(210);
  for(int i = 0; i < qtd; i++) {
    fill(elipses[i].cor);
    circle(elipses[i].px, elipses[i].py, elipses[i].tamanho);
    elipses[i].moviment();
  }
  frame++;
  if(frame > 120){
    frame = 0;
  }
}
