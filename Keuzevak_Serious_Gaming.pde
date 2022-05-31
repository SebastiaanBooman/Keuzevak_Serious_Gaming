PFont f;
PImage img;
PImage c;
PImage inventory_img;
PImage background2;

boolean backSpaceKeyPressed = false;
boolean controlKeyPressed = false;
boolean aKeyPressed = false;
boolean sKeyPressed = false;
boolean cKeyPressed = false;
boolean vKeyPressed = false;
boolean spacebarPressed = false;
boolean iKeyPressed = false;

int gameState = 0;
//game state refers to the condition of the game
//0 -> intro screen
//1 -> objective 1
//2 -> victory screen objective 1
//3 -> objective 2

ObjectiveOne obj1 = new ObjectiveOne();
ObjectiveTwo obj2 = new ObjectiveTwo();
DialogBox dialogBox = new DialogBox();
Inventory inventory = new Inventory();

void setup() {
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  img = loadImage("test.jpg");
  img.resize(0, 1920);
  fullScreen();
  //size(1280, 720);
  size(1920, 1080);
  c = loadImage("cursor2.png");
  inventory_img = loadImage("burlap-sack.png");

  background2 = loadImage("test2.jpg");
  background2.resize(0,1920);
  //cursor(MOVE);
  //cursor(CROSS);
}
void draw() {
  background(255);
  switch(gameState){
  case 0:
    image(img, 0, 0);
    dialogBox.DrawDialogBox("Open your inventory [i]");
    //rect(1300, 250, 300, 550);
    if((mouseX >= 1300 && mouseX <= 1550)  && (mouseY >= 300 && mouseY <= 850) ) cursor(HAND);
    else cursor(ARROW);
    if(iKeyPressed) gameState = 1; //image(inventory_img, 0, 0);
    break;
  case 1:
    image(img, 0, 0);
    dialogBox.DrawDialogBox("Close your inventory [backspace]");
    inventory.DrawInventory(0);
    //rect(1300, 250, 300, 550);
    if((mouseX >= 1300 && mouseX <= 1550)  && (mouseY >= 300 && mouseY <= 850) ) cursor(HAND);
    else cursor(ARROW);
    if(backSpaceKeyPressed) gameState = 0;  //image(inventory_img, 0, 0);
    break;
  case 2:
    image(background2, 0, 0);
    dialogBox.DrawDialogBox("Example text");
    break;
  default:
    break;
  }
}
/*
void draw() {
  switch(gameState){
  case 0:
    obj1.stepOne();
    //System.out.println("CONTROL KEY a: " + controlKeyPressed);
    //System.out.println("a KEY a: " + aKeyPressed);
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
*/
void mouseClicked(){
  switch(gameState){
  case 0:
    if((mouseX >= 1300 && mouseX <= 1550)  && (mouseY >= 300 && mouseY <= 850)){
      cursor(ARROW);
      gameState = 2;
   }
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
//https://forum.processing.org/two/discussion/13786/how-make-key-combos
//https://css-tricks.com/snippets/javascript/javascript-keycodes/