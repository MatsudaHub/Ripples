
int[] posX = new int[10];
int[] posY = new int[10];
int[] scale = new int[10];
int new_ripple = 0;

void setup(){
  size(400,400);
  for(int i=0; i<scale.length; i++){
    scale[i] = -1;
  }
}

void draw(){
  background(10);
  
  for(int i=0; i<scale.length; i++)
  if(scale[i]!=-1){
    drawRipple(posX[i],posY[i],scale[i]);
    scale[i]++;
  }
}

void mousePressed(){
  generateRipple(mouseX,mouseY);
}

void generateRipple(int mouseX, int mouseY){
  posX[new_ripple] = mouseX;
  posY[new_ripple] = mouseY;
  scale[new_ripple] = 10;
  new_ripple++;
}

void drawRipple(int px, int py, int sc){
  fill(255);
  ellipse(px, py, sc, sc);
  fill(0);
  ellipse(px, py, sc-5, sc-5);
}
