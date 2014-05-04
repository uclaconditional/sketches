ArrayList imageFiles = new ArrayList();
boolean folderIsSelected ;
int countSelection ;
String selectedPathFolder = ("") ;
// main void
//choice Folder
void choiceFolder() {
  folderIsSelected = true ;
  if(key =='o') selectFolder("Select a folder to process:", "folderSelected");
}



// check what's happen in the selected folder
void checkFolder() {
  if(folderIsSelected && selectedPathFolder != ("") ) {
    countSelection++ ;
    imageFiles.clear() ;
    String path = selectedPathFolder ;
  
    println("Listing info about all files in a directory and all subdirectories: ");
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
        if (lastThree.equals("PNG") || lastThree.equals("png") || lastThree.equals("JPG") || lastThree.equals("jpg") || lastThree.equals("GIF") || lastThree.equals("gif")) {
          imageFiles.add(f);
        }
      }
    }
    // show the info name file
    for (int i = 0; i < imageFiles.size(); i++) {
      File f = (File) imageFiles.get(i); 
      println("Name: " + f.getName());
    }
    
    // to don't loop with this void
    folderIsSelected = false ;
  }
}
// end main void

//choice Folder
void folderSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
    selectedPathFolder = selection.getAbsolutePath() ;
    folderIsSelected = true ;
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
