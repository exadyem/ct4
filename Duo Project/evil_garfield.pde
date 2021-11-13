Eye e1, e2;

void setup(){
  size(600, 600);
  noStroke();
  e1= new Eye(200, 315, 63);
  e2= new Eye(400, 315, 63);

}

void draw(){
  fill(197, 224, 220);
  stroke(0);
  strokeWeight(4);
  background(255);  
  fill(0);
  
//ears
  fill(#1A1918);
  triangle(130, 100, 120, 300, 400, 300);
  triangle(470, 100, 480, 300, 200, 300);
  fill(#F29F31);
  triangle(150, 150, 130, 300, 500, 280);
  triangle(450, 150, 480, 300, 100, 280);

//whiskers
  line(120, 280, 40, 260);
  line(480, 280, 560, 260);
  line(120, 300, 60, 300);
  line(480, 300, 540, 300);
  line(120, 320, 40, 340);
  line(480, 320, 560, 340);

//face
  fill(#F29F31);
  ellipse(300, 300, 400, 300);

//nose
  fill(224, 142, 121);
  if(mousePressed && (mouseButton == LEFT))
  fill(#ED2D2D);
  ellipse(300, 328, 40, 20);  
  fill(#F29F31);
  
//chin
  arc(300, 400, 200, 80, 0, PI / 1.0);
  
//mouth
  line(300, 350, 260, 360);
  line(300, 350, 340, 360);
  line(300, 350, 300, 340);

  
  strokeWeight(3);
  fill(#FFFFFF);
  triangle(280, 355, 290, 352, 285, 370);
  triangle(320, 355, 310, 352, 315, 370);

//eyebrows
  strokeWeight(7);
  line(260, 230, 140, 185);
  line(345, 230, 460, 185);

//eyes
  stroke(0);
  strokeWeight(5);
  fill(#F29F31);
  ellipse(200, 280, 80, 135);
  ellipse(400, 280, 80, 135);

  stroke(0);
  strokeWeight(4);
  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);
  
  e1.display();
  e2.display();
  
  save("evil_garfield6.png");
  
}

class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts){
    x = tx;
    y = ty;
    size = ts;
  }
  void update(int mx, int my){
    angle = atan2(my-y, mx-x);
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    fill(255);
    ellipse(0,0, size, size);
    rotate(angle);
    fill(0);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
 
}
