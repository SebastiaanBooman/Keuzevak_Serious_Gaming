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

PImage redAppleImg;

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

//game state refers to the condition of the game
int gameState = -1;

DialogBox dialogBox = new DialogBox();

String ctrlfInput = ".... .....";
char[] ctrlfInputArr = ctrlfInput.toCharArray();
int valuesEntered = 0;

void setup() {
  SetupFonts();
  LoadImages();
  //Setup screen
  fullScreen();
  size(1920, 1080);
}

void draw() {
  background(0);
  switch(gameState){
    case -1:
      StartScreen();
      break;
    case 0:
      MeetingTheWizard1();
      break;
    case 1:
      MeetingTheWizard2();
      break;
    case 2:
      MeetingTheWizard3();
      break;
    case 3:
      MeetingTheWizard4();
      break;
    case 4:
      MeetingTheWizard5();
      break;
    case 5:
      MeetingTheWizard6();
      break;
    case 6:
      MeetingTheWizard7();
      break;
    case 7:
      MeetingTheWizard8();
      break;
    case 8:
      MeetingTheWizard9();
      break;
    case 9:
      ExploringTheTown1();
      break;
    case 10:
      ExploringTheTown2();
      break;
    case 11:
      ExploringTheTown3();
      break;
    case 12:
      ExploringTheTown4();
      break;
    case 13:
      ExploringTheTown5();
      break;
    case 14:
      ExploringTheTown6();
      break;
    case 15:
      ExploringTheTown7();
      break;
    case 16:
      ExploringTheTown8();
      break;
    case 17:
      ExploringTheTown9();
      break;
    case 18:
      ReturningToWizard();
      break;
    default:
      text("Serious gaming\n\nSebastiaan Booman en Joey Bergwerff", 300, 800);
      break;
  }
}