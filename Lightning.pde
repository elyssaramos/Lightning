int startX = 150;
int startY = 0;
int endX = ((int)Math.random()*300);
int endY = 150;

void setup(){
  size(300,300);
  strokeWeight(2);
  background(0, 0, 0, 15);
  frameRate(5);
}

void draw(){
  stroke(2, 28, 164);
  while (endX < 300)
  {
    fill(0, 0, 0, 15);
    rect(0, 0, 300, 300);
    endX = startX + ((int)(Math.random()*19-9));
    endY = startY + ((int)(Math.random()*10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
if (endX < 150){
  fill(255, 255, 255);
  rect(0, 0, 300, 300);
  line(startX, startY, endX, endY);
  startX = 150;
  startY = 0;
  endX = ((int)Math.random()*300);
  endY = 0;
}
  else if (endX <= 250){
  line(startX, startY, endX, endY);
  startX = 150;
  startY = 0;
  endX = ((int)Math.random()*300);
  endY = 0;
  }
  else {
  stroke(2, 117, 244);
  line(startX, startY, endX, endY);
  startX = 150;
  startY = 0;
  endX = ((int)Math.random()*300);
  endY = 0;
  }
}
