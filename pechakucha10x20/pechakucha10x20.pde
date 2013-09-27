
import java.io.File;

boolean start = true;

int lastSecond;
int thisImage = 0;

ArrayList imageFiles = new ArrayList();

void setup() {
  size(1024, 768); 

  String path = sketchPath;

  println("\nListing info about all files in a directory and all subdirectories: ");
  ArrayList allFiles = listFilesRecursive(path);

  String fileName = "";

  for (int i = 0; i < allFiles.size(); i++) {
    File f = (File) allFiles.get(i);   
    fileName = f.getName(); 
    //println("Name: " + filename);
    //println("Full path: " + f.getAbsolutePath());
    //println("Is directory: " + f.isDirectory());

    // Add it to the list if it's not a directory
    if (f.isDirectory() == false) {
      String lastThree = fileName.substring(fileName.length()-3, fileName.length());
      if (lastThree.equals("PNG") ||
        lastThree.equals("png") ||
        lastThree.equals("JPG") ||
        lastThree.equals("jpg") ||
        lastThree.equals("GIF") ||
        lastThree.equals("gif")) {

        imageFiles.add(f);
      }
      println(lastThree);
    }
    //println("Size: " + f.length());
    //String lastModified = new Date(f.lastModified()).toString();
    //println("Last Modified: " + lastModified);
    println("-----------------------");
  }

  println("-----------------------");
  println("-----------------------");
  println("-----------------------");
  println("-----------------------");
  println("-----------------------");

  for (int i = 0; i < imageFiles.size(); i++) {
    File f = (File) imageFiles.get(i); 
    println("Name: " + f.getName());
  }

  lastSecond = second();
  
  //line(0, 0, width, height);
  //line(0, height, width, 0);
  textAlign(CENTER);
  background(255);
  text("PRESS SPACEBAR TO START", width/2, height/2);
}

PImage img;

void draw() {
  // Empty, but needed to keep listening for keys
  if (start && lastSecond != second() && second() % 20 == 0) {
    File f = (File) imageFiles.get(thisImage);
    img = loadImage(f.getAbsolutePath());
    if (thisImage < imageFiles.size()-1) {
      thisImage++;
    }
    image(img, 0, 0, width, height);
    lastSecond = second();
  }
}

void keyPressed() {

  if (key == ' ') {
    start = true;
  }
}

// This function returns all the files in a directory as an array of Strings  
String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } 
  else {
    // If it's not a directory
    return null;
  }
}

// This function returns all the files in a directory as an array of File objects
// This is useful if you want more info about the file
File[] listFiles(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    File[] files = file.listFiles();
    return files;
  } 
  else {
    // If it's not a directory
    return null;
  }
}

// Function to get a list ofall files in a directory and all subdirectories
ArrayList listFilesRecursive(String dir) {
  ArrayList fileList = new ArrayList(); 
  recurseDir(fileList, dir);
  return fileList;
}

// Recursive function to traverse subdirectories
void recurseDir(ArrayList a, String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    // If you want to include directories in the list
    a.add(file);  
    File[] subfiles = file.listFiles();
    for (int i = 0; i < subfiles.length; i++) {
      // Call this function on all files in this directory
      recurseDir(a, subfiles[i].getAbsolutePath());
    }
  } 
  else {
    a.add(file);
  }
}

