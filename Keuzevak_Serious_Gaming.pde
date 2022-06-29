PFont f;
PImage backgroundImg1;
PImage backgroundImg2;

PImage inventoryImg1;
PImage inventoryImg2;

boolean backSpaceKeyPressed = false;
boolean controlKeyPressed = false;
boolean aKeyPressed = false;
boolean sKeyPressed = false;
boolean cKeyPressed = false;
boolean vKeyPressed = false;
boolean spacebarPressed = false;
boolean iKeyPressed = false;

//game state refers to the condition of the game
int gameState = 0;

ObjectiveOne obj1 = new ObjectiveOne();
ObjectiveTwo obj2 = new ObjectiveTwo();

void setup() {
  //SETUP FONTS
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on

  //SETUP SCREEN
  fullScreen();
  size(1920, 1080);
}

void draw() {
  switch(gameState){
  case 0:
    obj1.stepOne();
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
  if(keyCode == 8) backSpaceKeyPressed = true;
  if(keyCode == 73) iKeyPressed = true; // i
  else if(keyCode == 65 && controlKeyPressed) aKeyPressed = true; //a
  else if(keyCode == 83 && controlKeyPressed) sKeyPressed = true; //s
  else if(keyCode == 86 && controlKeyPressed) vKeyPressed = true; //v
  else if(keyCode == 67 && controlKeyPressed) cKeyPressed = true; //c
  else if(keyCode == 32) spacebarPressed = true; //spacebar
}

void keyReleased(){  
  switch(keyCode){
  case 8: backSpaceKeyPressed = false; //backspace
  case 65: aKeyPressed = false; //a
  case 67: cKeyPressed = false; //c
  case 73: iKeyPressed = false; //i
  case 86: vKeyPressed = false; //v
  case 83: sKeyPressed = false; //s
  case CONTROL: controlKeyPressed = false;
  case 32: spacebarPressed = false;
  }
}