float p = 175;
//aqui declaramos la variables de velocidad y pocicion
float v= 1.0;
void setup(){
  size(400,400);
  background(255);
}
//aqui declaramos un valor a linea para X
  int linea = 10;
  int linea2 = 400;
  void draw(){
   //aqui ledamos un movimiento 
   p= p+v;
    fill(255,0,0);
    //line(mouseX,mouseY,210,220);
    //usando el codigo mouse podemos hacer que el punto se muevo con el mouse
    point(mouseX,mouseY);
    fill(255);
    //noStroke();
   //aqui le damos un rango a la zona del mouse para q cuando pase por el cuadrado se ponga negro
   if(mouseX >160&& mouseX<262&&mouseY<260&& mouseY>160){
      fill(random(255));
    }
    
    rect(160,160,100,100);
    
    //aqui le damos un color random a circulo
    fill(random(255),random(255),random(255));
    ellipse(p,210,30,30);
    //aqui le damos parametros para el rebote
    if(p == 175){
       v=+1;
    }
    if(p==245){
   v=-1;
    }
     point(202,250);
    p= p++;
    
 //aqui partimos la linea hata la mitad del ancho y que se repita hacia abajo 
 line(0,linea,width/2,linea);
  linea=linea+2;
  //aqui lo usamos desde la mitad hasta el fnal del ancho y que desde abajo suba
  line(width/2,linea2,width,linea2);
  linea2=linea2-2;}
  //aque al hacer clic hacemos que salgan circolos rojos en la pantalla
  void mousePressed(){
  stroke(0);
  fill(255,0,0);
  //rectMode(CENTER);
  ellipse(mouseX,mouseY,16,16);
  }
