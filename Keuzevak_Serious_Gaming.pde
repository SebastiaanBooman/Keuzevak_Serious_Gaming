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

int gameState = 0;
//game state refers to the condition of the game

ObjectiveOne obj1 = new ObjectiveOne();
ObjectiveTwo obj2 = new ObjectiveTwo();
DialogBox dialogBox = new DialogBox();
Inventory inventory = new Inventory();

void setup() {
  //SETUP FONTS
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on

  //SETUP IMAGES TODO: DELEGATE THIS TO SEPARATE FUNCTIONS
  backgroundImg1 = loadImage("test.jpg");
  backgroundImg1.resize(0, 1920);

  inventoryImg1 = loadImage("burlap-sack.png");
  inventoryImg2 = loadImage("burlap-sack-scroll.png");

  backgroundImg2 = loadImage("test2.jpg");
  backgroundImg2.resize(0,1920);
  //SETUP SCREEN
  fullScreen();
  //size(1280, 720);
  size(1920, 1080);
}

void draw() {
  background(255);
  switch(gameState){
  case 0:
    image(backgroundImg1, 0, 0);
    dialogBox.DrawDialogBox("Open your inventory [i]");
    if((mouseX >= 1300 && mouseX <= 1550)  && (mouseY >= 300 && mouseY <= 850) ) cursor(HAND);
    else cursor(ARROW);
    if(iKeyPressed) gameState = 1;
    break;
  case 1:
    image(backgroundImg1, 0, 0);
    dialogBox.DrawDialogBox("Close your inventory [backspace]");
    inventory.DrawInventory(gameState);
    if((mouseX >= 1300 && mouseX <= 1550)  && (mouseY >= 300 && mouseY <= 850) ) cursor(HAND);
    else if((mouseX >= 150 && mouseX <= 250) && (mouseY >= 160 && mouseY <= 210)) cursor(HAND);
    else cursor(ARROW);
    if(backSpaceKeyPressed) gameState = 0;
    break;
  case 2:
    image(backgroundImg1, 0, 0);
    dialogBox.DrawDialogBox("Scroll obtained!");
    inventory.DrawInventory(0);
    break;
  case 3:
    image(backgroundImg2, 0, 0);
    dialogBox.DrawDialogBox("Example text");
    break;
  default:
    break;
  }
}

void mouseClicked(){
  switch(gameState){
  case 0:
    if((mouseX >= 1300 && mouseX <= 1550)  && (mouseY >= 300 && mouseY <= 850)){
      cursor(ARROW);
      gameState = 3;
   }
    break;
  case 1:
    if((mouseX >= 150 && mouseX <= 250) && (mouseY >= 160 && mouseY <= 210)){
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