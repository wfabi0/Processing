int frame;
int cenario;

Cenario cenarios[] = {
  new Cenario01(random(50, 750), random(50, 550), color(random(0,255), random(0,255), random(0,255), random(0,255)), random(80, 100)),
  new Cenario02(random(50, 750), random(50, 750), random(100, 220), random(100, 220), color(random(0,255))),
  new Cenario03(120, 300, 232, 80, 344, 300, color(random(0,255))),
  new Cenario04(10, 10, 10)
};

void setup(){
  size(800, 600);
  frame = 0;
  cenario = 0;
}

void draw(){
  background(200);
  fill(0);
  textSize(40);
  text("Cenario " + (int)(cenario + 1), 10, 40);
  switch(cenario) {
    case 0: {
      cenarios[0].display();
      break;
    }
    case 1: {
      cenarios[1].display();
      break;
    }
    case 2: {
      cenarios[2].display();
      break;
    }
    case 3: {
      cenarios[3].display();
      break;
    }
  }
  if(frame > 400) {
    frame = 0;
    cenario++;
    if(cenario > 3) {
      cenario = 0;
    }
  }
  frame++;
}
