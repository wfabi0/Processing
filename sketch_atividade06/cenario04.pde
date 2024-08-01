class Cenario04 implements Cenario {  
  Cenario01 cenarios01[];
  Cenario02 cenarios02[];
  Cenario03 cenarios03[];
  
  Cenario04(int qt1, int qt2, int qt3) {
    cenarios01 = new Cenario01[qt1];
    cenarios02 = new Cenario02[qt2];
    cenarios03 = new Cenario03[qt3];
    for(int i = 0; i < qt1; i++) {
      cenarios01[i] = new Cenario01(random(50, 750), random(50, 550), color(random(0,255), random(0,255), random(0,255), random(0,255)), random(80, 100));
    }
    for(int i = 0; i < qt2; i++) {
      cenarios02[i] = new Cenario02(random(50, 750), random(50, 750), random(100, 220), random(100, 220), color(random(0,255)));
    }
    for(int i = 0; i < qt3; i++) {
      float x1 = random(0, 400);
      float y1 = random(0, 200);
      float sideLength = random(50, 150);
      cenarios03[i] = new Cenario03(x1, y1, x1 + sideLength, y1, x1 + (sideLength / 2), y1 - (sqrt(3) / 2 * sideLength), color(random(0,255)));
    }
  }
  
  void display() {
    for(int i = 0; i < cenarios01.length; i++) {
      cenarios01[i].display();
    }
    for(int i = 0; i < cenarios02.length; i++) {
      cenarios02[i].display();
    }
    for(int i = 0; i < cenarios03.length; i++) {
      cenarios03[i].display();
    }
  }
}
