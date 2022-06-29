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
        break;
    case 10:
        if((mouseX >= 300 && mouseX <= 900)  && (mouseY >= 500 && mouseY <= 800) ){
        cursor(ARROW);
        gameState = 11;
        }
        break;
    case 11:
        gameState = 10;
        break;
    case 13:
        gameState = 12;
        break;
    case 14:
        if((mouseX >= 500 && mouseX <= 700)  && (mouseY >= 500 && mouseY <= 700) ){
        cursor(ARROW);
        gameState = 15;
        }
        break;
    case 15:
        gameState = 16;
        break;
    case 16:
        if((mouseX >= 0 && mouseX <= 1920)  && (mouseY >= 1000 && mouseY <= 1150) ){
        cursor(ARROW);
        gameState = 17;
        }
        break;
    case 17:
        if((mouseX >= 1400 && mouseX <= 1920)  && (mouseY >= 700 && mouseY <= 1080) ){
        cursor(ARROW);
        gameState = 18;
        }
        break;
    case 18:
        gameState = -2;
        break;
    default:
        break;
  }
}