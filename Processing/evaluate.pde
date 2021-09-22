//
String question1="Who did it?";
String answer1= "john";
String typing="";
String saved="";
//
//
void setup() {
  size(600, 600);
} // func
//
void draw() {
  // main
  background(0);
  fill(255);
  // image(normal, 185, -140);
  // image(normal, 210, 200, normal.width/2, normal.height/2);
  // textFont(f);
  textSize(60);
  // character text
  text(question1, 50, 50);

  // has user text been entered and sent?
  if (!saved.equals(""))
  {
    // answer has been given now
    evaluateAnswer();
  }
  else
  {
    // wait till answer is complete
    text(typing, 50, 100);
  }
} // func
//
void evaluateAnswer() {
  // evaluate Answer
  text(saved, 50, 100);
  println ("Eval");
  if (saved.equals(answer1)) {
    // correct
    fill(2, 255, 2);
    text("correct", 50, 150);
    fill(255);
    text("Press return \nto play again", 50, 350);
  }
  else
  {
    // wrong
    fill(255, 2, 2);
    text("wrong...", 50, 150);
    fill(255);
    text("Press return \nto play again", 50, 350);
  }
} // func
//
void keyPressed() {
  if (key == '\n' ) {
    saved = typing;
    typing = "";
  }
  else {
    typing = typing + key;
  }
} // func
//
