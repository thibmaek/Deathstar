/* Loads Minim Required Components */
import ddf.minim.*;
Minim minim;
AudioPlayer player;

/* Vars for the sphere details */
int ures = 7;
int vres = 4;
float angle = 0.0001;
float easing = 0.05;
float x,y;

/* General Vars */
JSONObject data;
JSONArray deaths;
Orb ds; 

void setup() {
  size(displayWidth, displayHeight, P3D);
  cursor(HAND);
  ds = new Orb();
  minim = new Minim(this);
  player = minim.loadFile("data/sounds/eerie.mp3");
  player.play();
}

void draw() {
  noStroke();
  fill(0,9);
  rect(0,0, width, height);
  /* background(0); */
  ds.display();
}

/* Debug method */
void keyPressed(){
	if(key == CODED){
		switch(keyCode){
			case LEFT:
				vres--;
				break;
			case RIGHT:
				vres++;
				break;
			case UP:
				ures++;
				break;
			case DOWN:
				ures--;
				break;
		}
	}
}