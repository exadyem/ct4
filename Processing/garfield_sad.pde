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
  ellipse(300, 328, 40, 20);  
  fill(#F29F31);
  
//chin
  arc(300, 400, 200, 80, 0, PI / 1.0);
  
//mouth
  arc(300, 370, 80, 40, PI, TWO_PI) ;
  line(300, 350, 300, 340);

//eyebrows
  line(240, 195, 140, 230);
  line(360, 195, 460, 230);

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
