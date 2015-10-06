class Note{
   float x; // Note's x coordinate
   float y = 145; // Note's y coordinate; Default: 145px
   float diameter = 45; // Size of the note; Default: 45px
   float enterTime; // The time where note becomes visible
   boolean canHit = false; // If note can be hit for points; Default: false
   boolean visible = false; // If note can be seen; Default: false
   float startHit; // Note can now be hit for points
   float endHit; // Note both disappears and can not be hit for points
   char letter; // Value is either f, g, h, or j
   boolean didHit = false;
   
   float dx = 5;
   float dy = 5;

   Note(char tempLetter, float tempEnterTime, float tempStartHit, float tempEndHit){
    
      letter = tempLetter;
      enterTime = tempEnterTime;
      startHit = tempStartHit;
      endHit = tempEndHit;
     
      if (letter == 'f'){
        x = 400;
      }
      else if (letter == 'g'){
        x = 470;
      }
      else if (letter == 'h'){
        x = 550;
      }
      else if (letter == 'j'){
        x = 630;
      }
      
      
   }
   
   void move(){
      if (letter == 'f'){
        while (x > 290 && y > 710){
          x -= dx;
          y -= dy;
        }
      }
      else if (letter == 'g'){
        while (x > 420 && y > 710){
          x -= dx;
          y -= dy;
        }
      }
      else if (letter == 'h'){
        while (x > 560 && y > 710){
          x -= dx;
          y -= dy;
        }
      }
      else if (letter == 'j'){
        while (x > 690 && y > 710){
          x -= dx;
          y -= dy;
        }
      }
   }
   boolean check(int time){
      if (key == 'f') {
        image(fKeyActive, 290, 620, 100, 100);
        if (time >= this.startHit && time <= this.endHit && this.letter == 'f'){
          return true;
        }
      }
      else if (key == 'g'){
        image(gKeyActive, 420, 620, 100, 100); 
        if (time >= this.startHit && time <= this.endHit && this.letter == 'g'){
          return true;
        }
      }
      else if (key == 'h'){
        image(hKeyActive, 555, 620, 100, 100); 
        if (time >= this.startHit && time <= this.endHit && this.letter == 'h'){
          return true;
        }
      }
      else if (key == 'j'){
        image(jKeyActive, 690, 620, 100, 100); 
        if (time >= this.startHit && time <= this.endHit && this.letter == 'j'){
          return true;
        }
      }
        return false;
   }
}
