Sun movingSun;
float mousePer;
PImage sun;
PImage bean;
int topX=(276+62);
int topY=(419+50);
int startX, startY;
int moveUp;
int x1=336, y1=509, x2=336, y2=419;
ArrayList<Stick>list;
boolean clicked=false;

void setup() {
  bean=loadImage("bean.png");
  size(640, 715);
  list=new ArrayList<Stick>();
  sun=loadImage("sun.png");
  list.add(new Stick(x1, y1, x2, y2));
}

void draw() {

  PImage feild= loadImage("grass.png");
  feild.resize(640, 715);
  background(feild);
  bean.resize(123, 134);
   {
    moveUp=(75*((topX-mouseX)/(topY-mouseY)));
    topY-=moveUp;
    topX-=75;
    list.add(new Stick(topX, topY, topX-moveUp, topY-75));
    println("topX: "+topX+"topY: "+topY+"moveUp "+moveUp);
   // list.get(i).show();
  }
  startX=276;
  startY=419;
  topX=(276+62);
  topY=(419+50);
  image(bean, startX, startY);
  int mX=mouseX;
  int mY=mouseY;
  image(sun, mX-61, mY-58);
  fill(255,218,68,30);
  noStroke();
  triangle(mouseX,mouseY,mouseX-60,490,mouseX+60,490);
  
}

void mouseClicked() {
  clicked=true;
  
}


class Stick {
  int x1, y1, x2, y2;
  Stick(int x1, int y1, int x2, int y2) {
    this.x1=x1;
    this.y1=y1;
    this.x2=x2;
    this.y2=y2;
  }
  void move() {
  }
  void show() {
    stroke(154, 205, 50);
    strokeWeight(15);
    line(x1, y1, x2, y2);
  }
}
