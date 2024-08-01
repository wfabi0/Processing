class Cenario03 implements Cenario {
  float px1;
  float py1;
  float px2;
  float py2;
  float px3;
  float py3;
  color cor;
  HashMap<String,Integer> direction = new HashMap<String,Integer>();
  
  Cenario03(float x1, float y1, float x2, float y2, float x3, float y3, color c){
    px1 = x1;
    py1 = y1;
    px2 = x2;
    py2 = y2;
    px3 = x3;
    py3 = y3;
    cor = c;
    direction.put("x", (int)random(0, 2));
    direction.put("y", (int)random(0, 2));
  }
  
  void moviment() {    
    if(direction.get("x") == 0) {
      this.px1--;
      this.px2--;
      this.px3--;
      if(this.px1 <= 50) {
        this.switchColor();
        direction.replace("x", 1);
      }
    } else {
      this.px1++;
      this.px2++;
      this.px3++;
      if(this.px1 >= 750) {
        this.switchColor();
        direction.replace("x", 0);
      }
    }
    
    if(direction.get("y") == 0) {
      this.py1--;
      this.py2--;
      this.py3--;
      if(this.py1 <= 50) {
        this.switchColor();
        direction.replace("y", 1);
      }
    } else {
      this.py1++;
      this.py2++;
      this.py3++;
      if(this.py1 >= 550) {
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
    triangle(this.px1, this.py1, this.px2, this.py2, this.px3, this.py3);
    this.moviment();
  }
}
