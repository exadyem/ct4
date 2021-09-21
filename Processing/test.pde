
PFont f;
String typing = "";
String saved = "";

StringList pos;
StringList neg;

PImage garfieldend;
PImage garfieldsad;

String[] a1 = {"sad", "unhappy", "sorrowful" , "depressed" , "pain", "painful" , "regretful" , "regret" ,"miserable" , "downhearted" ,"down",  "despair", "despairing" , "upset" + "angry" + "mad" , "irritated" ,"annoyed" , "resentful" , "irked" , "irk"};


void setup(){
  size(600, 600);
  noStroke();
  f = createFont("Arial", 20);
  
  pos = new StringList();
  pos.append("happy" + "good" + "gleeful" + "cheery" + "cheerful" + "content" + "contented" + "merry" + "delighted" + "jolly" + "lucky" + "fortunate" + "fortunately" + "smiling" + "smile" + "happiness");
  neg = new StringList();
  neg.append("sad" + "unhappy" + "sorrowful" + "depressed" + "pain" + "painful" + "regretful" + "regret" + "miserable" + "downhearted" + "down" + "despair" + "despairing" + "upset" + "angry" + "mad" + "irritated" + "annoyed" + "resentful" + "irked" + "irk");
  
  
  garfieldend = loadImage("garfield_end.png");
  garfieldsad = loadImage("sadge.png");
}

void draw(){
  fill(197, 224, 220);
  stroke(0);
  strokeWeight(4);
  int indent = 25;
  background(255);
  
  textFont(f);
  fill(0);

  if(!saved.equals("")){
    evaluateAnswer();
  }
  
  
  //display
  text("Click to type, enter to save", indent, 40);
  text("Input: " + typing, indent, 60);
  text("Saved:" + saved, indent, 80);

}

void keyPressed() {
  if (key == '\n' ) {
    saved = typing;
    typing ="";
  } else {
    typing = typing + key; 
  }
}

void evaluateAnswer() {
  // evaluate Answer
  text(saved, 50, 100);
  println ("Eval");
  if (saved.contains(a1)) {
    // correct
    image(garfieldsad, 0, 0);
  }
  
  else
  {
    // wrong
    fill(255, 2, 2);
    text("wrong...", 50, 150);
    fill(255);
    text("Press return \nto play again", 50, 350);
  }
}
 
