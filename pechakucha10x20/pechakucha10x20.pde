// main source is from UCLA Arts Software Studio by Casey Reas
void setup() {
  size(1024, 768); 
  lastSecond = second();
  instruction() ;
}

PImage img;

void draw() {
  checkFolder() ;
  showPictures() ;
}
void keyPressed() {
  choiceFolder() ;
}



// ANNEXE


int lastSecond;
int thisImage = 0;
int countRef ;

void showPictures() {
  if(countSelection != countRef) thisImage = 0 ;
  // Empty, but needed to keep listening for keys
  if (!folderIsSelected && selectedPathFolder != ("") && lastSecond != second() && second() % 2 == 0) {
    File f = (File) imageFiles.get(thisImage);
    img = loadImage(f.getAbsolutePath());
    if (thisImage < imageFiles.size()-1) {
      thisImage++;
    }
    image(img, 0, 0, width, height);
    lastSecond = second();
  }
  countRef = countSelection ;
}


void instruction() {
  textAlign(CENTER);
  background(255);
  fill(0) ;
  text("PRESS 'O' TO SELECT FOLDER", width/2, height/2);
}



