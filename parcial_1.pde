float p = 175;

float v= 1.0;
void setup(){
  size(400,400);
  background(255);
}
  int linea = 10;
  int linea2 = 400;
  void draw(){
    p= p+v;
    fill(255,0,0);
    //line(mouseX,mouseY,210,220);
    point(mouseX,mouseY);
    fill(255);
    //noStroke();
    if(mouseX >160&& mouseX<262&&mouseY<260&& mouseY>160){
      fill(random(255));
    }
    
    rect(160,160,100,100);
    
    
    fill(random(255),random(255),random(255));
    ellipse(p,210,30,30);
    if(p == 175){
       v=+1;
    }
    if(p==245){
   v=-1;
    }
     point(202,250);
    p= p++;
    
  line(0,linea,width/2,linea);
  linea=linea+2;
  line(width/2,linea2,width,linea2);
  linea2=linea2-2;}
  
  void mousePressed(){
  stroke(0);
  fill(255,0,0);
  //rectMode(CENTER);
  ellipse(mouseX,mouseY,16,16);
  }
