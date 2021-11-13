int numFrames = 5;
int currentFrame = 0;
PImage[] images = new PImage[numFrames];

void setup(){
  size(600, 600);
  frameRate(10);
  
  images[0] = loadImage("groupproj_sad_frame1.png");
  images[1] = loadImage("groupproj_sad_frame2.png");
  images[2] = loadImage("groupproj_sad_frame3.png");
  images[3] = loadImage("groupproj_sad_frame4.png");
  images[4] = loadImage("groupproj_sad_frame5.png");

}

void draw(){
 background(0);
 currentFrame = (currentFrame+1) % numFrames;
 int offset = 0;

 
 for(int x = 0; x < width; x += images[0].width){
  image(images[(currentFrame+offset) % numFrames], x, -20); 
 }
 delay(120);
}
