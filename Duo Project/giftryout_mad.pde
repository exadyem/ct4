int numFrames = 5;
int currentFrame = 0;
PImage[] images = new PImage[numFrames];

void setup(){
  size(600, 600);
  frameRate(10);
  
  images[0] = loadImage("evil_garfield2.png");
  images[1] = loadImage("evil_garfield3.png");
  images[2] = loadImage("evil_garfield4.png");
  images[3] = loadImage("evil_garfield5.png");
  images[4] = loadImage("evil_garfield6.png");

}

void draw(){
 background(0);
 currentFrame = (currentFrame+1) % numFrames;
 int offset = 0;

 
 for(int x = 0; x < width; x += images[0].width){
  image(images[(currentFrame+offset) % numFrames], x, -20); 
 }
 delay(150);
}
