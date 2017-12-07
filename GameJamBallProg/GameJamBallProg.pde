float x = 300;
float y = 300;
float size = 50;
float speedX = 10;
float speedY = 10;
float rot = 0;
PImage bg;
PImage beachball;
import processing.sound.*;

SoundFile file;

void setup()
{
  size(600,600);
  bg = loadImage("BeachBG.jpg");
  beachball = loadImage("Beach-Ball-PNG-Image.png");
  file = new SoundFile(this,"A Corner of Memories In The Labyrinth.mp3");
  file.play();
  file.amp(0.5);
}

void draw()
{
 background(bg);
 
 imageMode(CENTER);
 pushMatrix();
 translate(x,y);
 rotate(rot);
 image(beachball,0,0,size,size); 
 popMatrix();
 rot-=PI/10;
 imageMode(CORNER);
 
 Move();
 Bounce();
}

void Move()
{
 x = x + speedX;
 y = y - speedY;
}

void Bounce()
{
  if(x > width)
  {
   speedX = speedX*-1; 
  }
  
  if(x < 0)
  {
    speedX = speedX*-1;
  }
  
  if(y < height)
  {
   speedY = speedY*-1; 
  }
  
  if(y > 0)
  {
   speedY = speedY*-1; 
  }
}