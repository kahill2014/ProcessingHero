//Load sound
import ddf.minim.*;
Minim minim;
//Song variable
AudioPlayer A, B, C, D;

//Load images
PImage fNoteIMG; //F Note
PImage gNoteIMG; //G Note
PImage hNoteIMG; //H Note
PImage jNoteIMG; //J Note
PImage background; //Background
PImage fKeyStatic; //F key when not pressed
PImage gKeyStatic; //G key when not pressed
PImage hKeyStatic; //H key when not pressed
PImage jKeyStatic; //J key when not pressed
PImage fKeyActive; //F key when pressed
PImage gKeyActive; //G key when pressed
PImage hKeyActive; //H key when pressed
PImage jKeyActive; //J key when pressed
PImage barBorder; //Border of bar showing level of success
PImage greenBar; //Green bar showing color of success
PImage yellowBar; //Green bar showing color of mediocrity
PImage redBar; //Green bar showing color of failure


//Create all four Notes
Note note1 = new Note('f', 200, 600, 800);


//Create notes hit counter
int counter = 15;
int multBar = 13;
int score = 0;

//Load timer
int TOTAL_TIME = 2000;
Timer time = new Timer(TOTAL_TIME);

void setup(){
   size(1080,720);
   smooth(); 
   
   fNoteIMG = loadImage("GREEN_NOTE.png");
   gNoteIMG = loadImage("RED_NOTE.png");
   hNoteIMG = loadImage("YELLOW_NOTE.png");
   jNoteIMG = loadImage("BLUE_NOTE.png");
   background = loadImage("Processing_Hero_Background.png");
   fKeyStatic = loadImage("F_KEY.png");
   gKeyStatic = loadImage("G_KEY.png");
   hKeyStatic = loadImage("H_KEY.png");
   jKeyStatic = loadImage("J_KEY.png");
   fKeyActive = loadImage("F_KEY_ACTIVE.png");
   gKeyActive = loadImage("G_KEY_ACTIVE.png");
   hKeyActive = loadImage("H_KEY_ACTIVE.png");
   jKeyActive = loadImage("J_KEY_ACTIVE.png");
   barBorder = loadImage("Bar_Border.png");
   greenBar = loadImage("BAR_GREEN.png");
   yellowBar = loadImage("BAR_YELLOW.png");
   redBar = loadImage("BAR_RED.png");
   
   Minim minim = new Minim(this);
   A = minim.loadFile("A.wav");
   B = minim.loadFile("B.wav");
   C = minim.loadFile("C.wav");
   D = minim.loadFile("D.wav");
  
   //Start timer
   time.start();
   
   image(background, 0, 0, 1080, 720);
   //Load the static keys
   image(fKeyStatic, 290, 620, 100, 100);
   image(gKeyStatic, 420, 620, 100, 100);
   image(hKeyStatic, 555, 620, 100, 100);
   image(jKeyStatic, 690, 620, 100, 100);
   //Load the success bar outline
   image(greenBar, 830, 380, multBar*counter, 100);
   image(barBorder, 825, 370, 220, 120); 
}

void draw(){
 //Only run if song is playing (time hasn't ended yet)
 while (!time.isFinished()){
    
    textSize(36);
    text("Score: " + score, 100, 100);
    
 }
  
}

//Constantly check for button input - uses the current time as the only parameter
void keyPressed(){
     note1.check(time.getMillis());
     if (key == 'f') {
       image(fKeyActive, 290, 620, 100, 100);
       score += 5;
       A.play();
      }
      else if (key == 'g'){
        image(gKeyActive, 420, 620, 100, 100);
       score -= 3;
       B.play();
      }
      else if (key == 'h'){
        image(hKeyActive, 555, 620, 100, 100); 
        C.play();
      }
      else if (key == 'j'){
        image(jKeyActive, 690, 620, 100, 100);
        D.play();
      }
   }
void keyReleased(){
   image(fKeyStatic, 290, 620, 100, 100);
   image(gKeyStatic, 420, 620, 100, 100);
   image(hKeyStatic, 555, 620, 100, 100);
   image(jKeyStatic, 690, 620, 100, 100);
   //g.removeCache(greenBar);
   //image(greenBar, 830, 380, multBar*counter, 100);
   
}

