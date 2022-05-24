PFont f;

boolean controlKeyPressed = false;
boolean aKeyPressed = false;
boolean sKeyPressed = false;
boolean cKeyPressed = false;
boolean vKeyPressed = false;
boolean spacebarPressed = false;

int gameState = -1;
//game state refers to the condition of the game
//0 -> intro screen
//1 -> objective 1
//2 -> victory screen objective 1
//3 -> objective 2
ObjectiveOne obj1 = new ObjectiveOne();
ObjectiveTwo obj2 = new ObjectiveTwo();
DialogBox dialogBox = new DialogBox();

void setup() {
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  fullScreen();
  //size(1280, 720);
  size(1920, 1080);
  
}

void draw() {
  switch(gameState){
  case -1:
    dialogBox.DrawDialogBox("Longer text");
    break;

  case 0:
    obj1.stepOne();
    System.out.println("CONTROL KEY a: " + controlKeyPressed);
    System.out.println("a KEY a: " + aKeyPressed);
    if(controlKeyPressed && aKeyPressed) gameState = 1;
    break;
  case 1:
    obj1.drawVictoryScreen();
    if(spacebarPressed) gameState = 2;
    break;
   case 2:
     obj2.stepOne();
     if(controlKeyPressed && sKeyPressed) gameState = 3;
      break;
    case 3:
      obj2.stepTwo();
      if(controlKeyPressed && cKeyPressed) gameState = 4;
       break;
    case 4:
      obj2.stepThree();
      if(controlKeyPressed && vKeyPressed) gameState = 5;
      break;
    case 5:
      obj2.drawVictoryScreen();
      break;
  default:
    break;
  }
}

void keyPressed(){
  if(keyCode == CONTROL) controlKeyPressed = true;
  else if(keyCode == 65 && controlKeyPressed) aKeyPressed = true; //a
  else if(keyCode == 83 && controlKeyPressed) sKeyPressed = true; //s
  else if(keyCode == 86 && controlKeyPressed) vKeyPressed = true; //v
  else if(keyCode == 67 && controlKeyPressed) cKeyPressed = true; //c
  else if(keyCode == 32) spacebarPressed = true; //spacebar
}

void keyReleased(){  
  switch(keyCode){
  case 65: aKeyPressed = false; //a
  case 67: cKeyPressed = false; //c
  case 86: vKeyPressed = false; //v
  case 83: sKeyPressed = false; //s
  case CONTROL: controlKeyPressed = false;
  case 32: spacebarPressed = false;
  }
}
//https://forum.processing.org/two/discussion/13786/how-make-key-combos
//https://css-tricks.com/snippets/javascript/javascript-keycodes/