
PFont f;
String typing = "";
String saved = "";

PImage garfieldend;
PImage garfieldsad;


void setup() {
  size(600, 600);
  noStroke();
  f = createFont("Arial", 20);

  garfieldend = loadImage("garfield_end.png");
  garfieldsad = loadImage("sadge.png");
}

void draw() {
  fill(197, 224, 220);
  stroke(0);
  strokeWeight(4);
  int indent = 25;
  background(255);

  textFont(f);
  fill(0);

  if (!saved.equals("")) {
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

  String[] neg ={"sad", "not happy", "not okay", "unhappy", "depressed", "bothered", "angry", "kms", "upset", "irritated", "suicidal", "irrelevant", "unimportant", "useless", "crying"};
  String[] pos ={"happy", "not sad", "not upset", "not depressed", "okay", "glad", "okay", "ok", "decent", "alright", "cheerful", "cheery", "excited", "joy", "jolly"};

  for (String negitem : neg) {
    if (saved.contains(negitem)) {
      image(garfieldsad, 0, 0);
    }

    for (String positem : pos) {
      if (saved.contains(positem)) {
        image(garfieldend, 0, 0);
      }
    }
  }
}
