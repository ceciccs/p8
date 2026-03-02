import processing.pdf.*;

PFont myFont;
boolean Record;
boolean check;
float g;
int inc;
void setup () {
  pixelDensity(1);
  size(500, 500);
  myFont=createFont("Careny.ttf", 20);
  frameRate(5);
}
void draw() {
  if (Record) {
    beginRecord(PDF, "scunaa-####.pdf");
  }
  background(90);
  textSize(40);
  textFont(myFont);
  for (float posx=10; posx<width-10; posx=posx+30) {
    for (float posy=30; posy<height-30; posy=posy+30){
    pushMatrix();
    translate (posx, posy);
    
   
    if(g>=360){
      check=false;
    }
    if (g<=0) {
      check=true;
    }
    if (check==false){
      inc=-1;
    }
    if (check==true) {
      inc=1;
    }
    g=g+.3*inc;
    rotate(radians(g));
    text("a", 0, 0);
    popMatrix();
  }
}
  
  
  if (Record) {
    endRecord();
    Record=false;
  }
  println(Record);
}
void mousePressed() {
  Record=true;
}
