void setup(){
  size(600, 600);
}

void draw(){
  noStroke();
  fill(197, 224, 220);
  stroke(#7C490B);
  strokeWeight(4);
  
//ears
  fill(#935C18);
  triangle(130, 100, 120, 300, 400, 300);
  triangle(470, 100, 480, 300, 200, 300);
  fill(#E8BC85);
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
  fill(#E8BC85);
  ellipse(300, 300, 400, 300);

//nose
  fill(224, 142, 121);
  triangle(300, 340, 280, 320, 320, 320);
  fill(#E8BC85);
  arc(275, 340, 50, 50,0, PI / 2.0);
  arc(325, 340, 50,50,HALF_PI, PI);
  arc(300, 400, 50,50,0, PI / 1.0);

//eyes
  noStroke();
  fill(0, 0, 0);
  ellipse(200, 280, 30, 30);
  ellipse(400, 280, 30, 30);
  
  save("kitty.png");
}
