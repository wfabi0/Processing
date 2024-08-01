class Cenario02 implements Cenario {
  float px;
  float py;
  float pc;
  float pd;
  color cor;
  HashMap<String,Integer> direction = new HashMap<String,Integer>();
  
  Cenario02(float x, float y, float c, float d, color cc){
    px = x;
    py = y;
    pc = c;
    pd = d;
    cor = cc;
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
  
  void display() {
    fill(this.cor);
    rect(this.px, this.py, this.pc, this.pd);
    this.moviment();
  }
}
