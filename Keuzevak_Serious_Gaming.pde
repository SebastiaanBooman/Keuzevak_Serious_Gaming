PFont f;
PImage backgroundImg1;
PImage backgroundImg2;
PImage backgroundImg3;

PImage inventoryImg1;
PImage inventoryImg2;

PImage wizardImg;

PImage scrollImg;
PImage scrollOpenImg;

PImage bagScrollImg;

PImage blackSquareImg;

PImage closedChestImg;
PImage openedChestImg;

String yellowHex = "#FFFF00";

boolean backSpaceKeyPressed = false;
boolean enterKeyPressed = false;
boolean controlKeyPressed = false;

boolean aKeyPressed = false;
boolean bKeyPressed = false;
boolean cKeyPressed = false;
boolean dKeyPressed = false;
boolean eKeyPressed = false;
boolean fKeyPressed = false;
boolean gKeyPressed = false;
boolean hKeyPressed = false;
boolean iKeyPressed = false;
boolean jKeyPressed = false;
boolean kKeyPressed = false;
boolean lKeyPressed = false;
boolean mKeyPressed = false;
boolean nKeyPressed = false;
boolean oKeyPressed = false;
boolean pKeyPressed = false;
boolean qKeyPressed = false;
boolean rKeyPressed = false;
boolean sKeyPressed = false;
boolean tKeyPressed = false;
boolean uKeyPressed = false;
boolean vKeyPressed = false;
boolean wKeyPressed = false;
boolean xKeyPressed = false;
boolean yKeyPressed = false;
boolean zKeyPressed = false;

boolean spacebarPressed = false;

boolean ctrlfKeyPressed = false;

int gameState = 10;//-1;
//game state refers to the condition of the game

ObjectiveOne obj1 = new ObjectiveOne();
ObjectiveTwo obj2 = new ObjectiveTwo();
DialogBox dialogBox = new DialogBox();
Inventory inventory = new Inventory();

String ctrlfInput = "____ _____";
char[] ctrlfInputArr = ctrlfInput.toCharArray();
int valuesEntered = 0;

void setup() {
  //SETUP FONTS
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  textFont(f,50);
  //SETUP IMAGES TODO: DELEGATE THIS TO SEPARATE FUNCTIONS
  backgroundImg1 = loadImage("background1.jpg");
  //backgroundImg1.resize(0, 1920);

  inventoryImg1 = loadImage("burlap-sack.png");
  inventoryImg2 = loadImage("burlap-sack-scroll.png");

  backgroundImg2 = loadImage("background2.jpg");
  backgroundImg2.resize(0,1100);

  backgroundImg3 = loadImage("background3.JPG");
  backgroundImg3.resize(1920,0);

  wizardImg = loadImage("wizard.png");
  wizardImg.resize(0, 2200);

  scrollImg = loadImage("closed-scroll.png");

  scrollOpenImg = loadImage("scroll.png");
  scrollOpenImg.resize(0, 1000);

  bagScrollImg = loadImage("burlap-sack-scroll.png");
  bagScrollImg.resize(0, 750);

  blackSquareImg = loadImage("blacksquare.png");
  blackSquareImg.resize(0, 1950);

  openedChestImg = loadImage("opened-chest-apples.png");
  openedChestImg.resize(0, 900);

  closedChestImg = loadImage("closed-chest.png");
  closedChestImg.resize(0, 275);

  //scrollImg.resize(0, 2200);
  //SETUP SCREEN
  fullScreen();
  //size(1280, 720);
  size(1920, 1080);
}
void draw() {
  background(0);
  switch(gameState){
  case -1:
    image(backgroundImg1, 0, 0);
    textSize(128);
    text("SHORTCUTS", 540, 300);
    textSize(80);
    text("Klik op enter", 640, 550);
    if(enterKeyPressed) gameState = 0;
    break;
  case 0:
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Ben je wakker? Ik herken je niet, hoogstwaarschijnlijk van een ander​\ndorp. Ik ben tovenaar Altevier.", Color.YELLOW);
    //if((mouseX >= 1300 && mouseX <= 1550)  && (mouseY >= 300 && mouseY <= 850) ) cursor(HAND);
    //else cursor(ARROW);
    //if(iKeyPressed) gameState = 1; //image(inventory_img, 0, 0); 
    break;
  case 1:
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Hier, ik heb wat voor je. Een tover perkament. Hierin staan alle heilige\nmagie spreuken", Color.YELLOW);
    break;
  case 2:
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    image(scrollImg, 1120, 300);
    dialogBox.DrawDialogBox("Hier, ik heb wat voor je. Een tover perkament. Hierin staan alle heilige\nmagie spreuken", Color.YELLOW);
    //rect(1120, 300, 400, 400);
    if((mouseX >= 1120 && mouseX <= 1420)  && (mouseY >= 300 && mouseY <= 500) ) cursor(HAND);
    else cursor(ARROW);
    break;
  case 3:
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    tint(255, 126);
    image(blackSquareImg, 0, 0);
    noTint();
    image(bagScrollImg, 550, 0);
    textSize(128);
    fill(255);
    text("Tover perkament\nontvangen!", 500, 800);
    //rect(800, 250, 210, 150);
    if((mouseX >= 800 && mouseX <= 1010)  && (mouseY >= 250 && mouseY <= 400) ) cursor(HAND);
    else cursor(ARROW);
    break;
  case 4:
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    tint(255, 126);
    image(blackSquareImg, 0, 0);
    noTint();
    image(scrollOpenImg, 500, 0);
    textSize(50);
    fill(0);
    text("Tover perkament\n\nShortcuts\n(Ctrl + F) - Nog niet ontdekt", 690, 200);
    break;

  case 5:
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    tint(255, 126);
    image(blackSquareImg, 0, 0);
    noTint();
    image(bagScrollImg, 550, 0);
    textSize(128);
    fill(255);
    text("Klik op [i] om in je\njutenzak te kijken", 500, 800);
    if((mouseX >= 800 && mouseX <= 1010)  && (mouseY >= 250 && mouseY <= 400) ) cursor(HAND);
    else cursor(ARROW);
    if(iKeyPressed) gameState = 6;
    break;
  case 6:
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Nu je toch wakker bent, heb ik een opdracht voor je. Zou jij naar de\nmarkt willen lopen om een rode appel te halen?", Color.YELLOW);
    break;
  case 7:
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Oh, je weet niet waar de markt is? Gewoon dit pad aflopen je ziet\n het vanzelf. Ik wacht hier op je.", Color.YELLOW);
    break;
  case 8:
    image(backgroundImg3, 0, 0);
    if((mouseX >= 495 && mouseX <= 595)  && (mouseY >= 700 && mouseY <= 895) ) cursor(HAND);
    else cursor(ARROW);
    break;
  case 9:
    image(backgroundImg2, 0, 0);
    image(closedChestImg, 200, 800);
    if((mouseX >= 200 && mouseX <= 500)  && (mouseY >= 800 && mouseY <= 1060) ) cursor(HAND);
    else cursor(ARROW);
    break;
  case 10:
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    image(openedChestImg, 200, 100);
    if((mouseX >= 300 && mouseX <= 900)  && (mouseY >= 500 && mouseY <= 800) ) cursor(HAND);
    else cursor(ARROW);
    if(ctrlfKeyPressed) gameState = 12;
    break;
  case 11:
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    image(openedChestImg, 200, 100);
    dialogBox.DrawDialogBox("Deze appels zijn groen! Was er maar een manier om\nnaar een rode appel te zoeken in deze berg...", Color.WHITE);
    break;
  case 12:
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    image(openedChestImg, 200, 100);
    text(ctrlfInput, 540, 300);
    delay(30);
    
    if(aKeyPressed) TryToAddLetter('a');
    else if(bKeyPressed) TryToAddLetter('b');
    else if(cKeyPressed) TryToAddLetter('c');
    else if(dKeyPressed) TryToAddLetter('d');
    else if(eKeyPressed) TryToAddLetter('e');
    else if(fKeyPressed) TryToAddLetter('f');
    else if(gKeyPressed) TryToAddLetter('g');
    else if(hKeyPressed) TryToAddLetter('h');
    else if(iKeyPressed) TryToAddLetter('i');
    else if(jKeyPressed) TryToAddLetter('j');
    else if(kKeyPressed) TryToAddLetter('k');
    else if(lKeyPressed) TryToAddLetter('l');
    else if(mKeyPressed) TryToAddLetter('m');
    else if(nKeyPressed) TryToAddLetter('n');
    else if(oKeyPressed) TryToAddLetter('o');
    else if(pKeyPressed) TryToAddLetter('p');
    else if(qKeyPressed) TryToAddLetter('q');
    else if(rKeyPressed) TryToAddLetter('r');
    else if(sKeyPressed) TryToAddLetter('s');
    else if(tKeyPressed) TryToAddLetter('t');
    else if(uKeyPressed) TryToAddLetter('u');
    else if(vKeyPressed) TryToAddLetter('v');
    else if(wKeyPressed) TryToAddLetter('w');
    else if(xKeyPressed) TryToAddLetter('x');
    else if(yKeyPressed) TryToAddLetter('y');
    else if(zKeyPressed) TryToAddLetter('z');
    else if(spacebarPressed) TryToAddLetter(' ');
    else if(enterKeyPressed){
      if(VerifyInput(ctrlfInput, "rode appel")){
        gameState = 0;
      }

    }
    else if(backSpaceKeyPressed) TryToRemoveLetter();
  
    break;
  default:
    break;
  }
}

public void TryToAddLetter(char letter){
  if(valuesEntered >= ctrlfInput.length()){}
  else{
    ctrlfInputArr[valuesEntered] = letter;
    ctrlfInput = String.valueOf(ctrlfInputArr);
    valuesEntered = valuesEntered + 1;
  }
}

public void TryToRemoveLetter(){
  if(valuesEntered == 0){}
  else{
    ctrlfInputArr[valuesEntered-1] = '_';
    ctrlfInput = String.valueOf(ctrlfInputArr);
    valuesEntered = valuesEntered - 1;
  }
}

public boolean VerifyInput(String input, String expected){
  if(input.equals(expected)){
    return true;
  } 
  return false;
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
    gameState = 1;
    break;
  case 1:
    gameState = 2;
    break;
  case 2:
    if((mouseX >= 1120 && mouseX <= 1420) && (mouseY >= 300 && mouseY <= 500)){
      cursor(ARROW);
      gameState = 3;
    }
    break;
  case 3:
    if((mouseX >= 800 && mouseX <= 1010)  && (mouseY >= 250 && mouseY <= 400)){
      cursor(ARROW);
      gameState = 4;
    }
    break;
  case 4:
    gameState = 5;
    break;
  case 5:
    if((mouseX >= 800 && mouseX <= 1010)  && (mouseY >= 250 && mouseY <= 400)){
      cursor(ARROW);
      gameState = 4;
    }
    break;
  case 6:
    gameState = 7;
    break;
  case 7:
    gameState = 8;
    break;
  case 8:
      if((mouseX >= 495 && mouseX <= 595)  && (mouseY >= 700 && mouseY <= 895)){
      cursor(ARROW);
      gameState = 9;
    }
    break;
  case 9:
      if((mouseX >= 200 && mouseX <= 500)  && (mouseY >= 800 && mouseY <= 1060) ){
        cursor(ARROW);
        gameState = 10;
    }
    //TODO: Add if for reverse (bottom of screen)
    break;
  case 10:
    if((mouseX >= 300 && mouseX <= 900)  && (mouseY >= 500 && mouseY <= 800) ){
      cursor(ARROW);
      gameState = 11;
    }
  //TODO: Add if for reverse (bottom of screen)
      break;
  case 11:
    gameState = 10;
    break;
  default:
    break;
  }
}
void keyPressed(){
  //if(keyCode == 13) enterKeyPressed = true;
  if(keyCode == ENTER) enterKeyPressed = true;
  if(keyCode == CONTROL) controlKeyPressed = true;
  if(keyCode == 8) backSpaceKeyPressed = true;
  else if(keyCode == 70 && controlKeyPressed) ctrlfKeyPressed = true; //f 
  else if(keyCode == 65) aKeyPressed = true; //a
  else if(keyCode == 66) bKeyPressed = true; //b
  else if(keyCode == 67) cKeyPressed = true; //c
  else if(keyCode == 68) dKeyPressed = true; //d
  else if(keyCode == 69) eKeyPressed = true; //e
  else if(keyCode == 70) fKeyPressed = true; //f
  else if(keyCode == 71) gKeyPressed = true; //g
  else if(keyCode == 72) hKeyPressed = true; //h
  else if(keyCode == 73) iKeyPressed = true; //i
  else if(keyCode == 74) jKeyPressed = true; //j
  else if(keyCode == 75) kKeyPressed = true; //k
  else if(keyCode == 76) lKeyPressed = true; //l
  else if(keyCode == 77) mKeyPressed = true; //m
  else if(keyCode == 78) nKeyPressed = true; //n
  else if(keyCode == 79) oKeyPressed = true; //o
  else if(keyCode == 80) pKeyPressed = true; //p
  else if(keyCode == 81) qKeyPressed = true; //q
  else if(keyCode == 82) rKeyPressed = true; //r
  else if(keyCode == 83) sKeyPressed = true; //s
  else if(keyCode == 84) tKeyPressed = true; //t
  else if(keyCode == 85) uKeyPressed = true; //u
  else if(keyCode == 86) vKeyPressed = true; //v
  else if(keyCode == 87) wKeyPressed = true; //w
  else if(keyCode == 88) xKeyPressed = true; //x
  else if(keyCode == 89) yKeyPressed = true; //y
  else if(keyCode == 90) zKeyPressed = true; //z
  
  else if(keyCode == 32) spacebarPressed = true; //spacebar
  
}

void keyReleased(){  
  switch(keyCode){
  case 8: backSpaceKeyPressed = false; //backspace
  case 13: enterKeyPressed = false; //enter
  
  case 65: aKeyPressed = false; //a
  case 66: bKeyPressed = false; //b
  case 67: cKeyPressed = false; //c
  case 68: dKeyPressed = false; //d
  
  case 69: eKeyPressed = false; //e
  case 70:
    fKeyPressed = false; //f
    ctrlfKeyPressed = false; // f
  case 71: gKeyPressed = false; //g
  case 72: hKeyPressed = false; //h
  case 73: iKeyPressed = false; //i
  case 74: jKeyPressed = false; //j
  case 75: kKeyPressed = false; //k
  
  case 76: lKeyPressed = false; //l
  case 77: mKeyPressed = false; //m
  case 78: nKeyPressed = false; //n
  case 79: oKeyPressed = false; //o
  case 80: pKeyPressed = false; //p
  case 81: qKeyPressed = false; //q
  case 82: rKeyPressed = false; //r
  case 83: sKeyPressed = false; //s
  case 84: tKeyPressed = false; //t
  case 85: uKeyPressed = false; //u
  case 86: vKeyPressed = false; //v
  case 87: wKeyPressed = false; //w
  case 88: xKeyPressed = false; //x
  case 89: yKeyPressed = false; //y
  case 90: zKeyPressed = false; //z
  
  case CONTROL: controlKeyPressed = false;
  case 32: spacebarPressed = false;
  }
}
//https://forum.processing.org/two/discussion/13786/how-make-key-combos
//https://css-tricks.com/snippets/javascript/javascript-keycodes/