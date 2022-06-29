public void StartScreen(){
    image(backgroundImg1, 0, 0);
    textSize(128);
    text("SHORTCUTS", 540, 300);
    textSize(80);
    text("Klik op enter", 640, 550);
    if(enterKeyPressed) gameState = 0;
}

public void MeetingTheWizard1(){
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Ben je wakker? Ik herken je niet, hoogstwaarschijnlijk van een ander​\ndorp. Ik ben tovenaar Altevier.", Color.YELLOW);
}

public void MeetingTheWizard2(){
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Hier, ik heb wat voor je. Een tover perkament. Hierin staan alle heilige\nmagie spreuken", Color.YELLOW);
}

public void MeetingTheWizard3(){
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    image(scrollImg, 1120, 300);
    dialogBox.DrawDialogBox("Hier, ik heb wat voor je. Een tover perkament. Hierin staan alle heilige\nmagie spreuken", Color.YELLOW);
    if((mouseX >= 1120 && mouseX <= 1420)  && (mouseY >= 300 && mouseY <= 500) ) cursor(HAND);
    else cursor(ARROW);
}

public void MeetingTheWizard4(){
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    tint(255, 126);
    image(blackSquareImg, 0, 0);
    noTint();
    image(bagScrollImg, 550, 0);
    textSize(128);
    fill(255);
    text("Tover perkament\nontvangen!", 500, 800);
    if((mouseX >= 800 && mouseX <= 1010)  && (mouseY >= 250 && mouseY <= 400) ) cursor(HAND);
    else cursor(ARROW);
}

public void MeetingTheWizard5(){
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    tint(255, 126);
    image(blackSquareImg, 0, 0);
    noTint();
    image(scrollOpenImg, 500, 0);
    textSize(50);
    fill(0);
    text("Tover perkament\n\nShortcuts\n(Ctrl + F) - Nog niet ontdekt", 690, 200);
}

public void MeetingTheWizard6(){
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
}

public void MeetingTheWizard7(){
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Nu je toch wakker bent, heb ik een opdracht voor je. Zou jij naar de\nmarkt willen lopen om een rode appel te halen?", Color.YELLOW);
}

public void MeetingTheWizard8(){
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Oh, je weet niet waar de markt is? Gewoon dit pad aflopen je ziet\n het vanzelf. Ik wacht hier op je.", Color.YELLOW);
}

public void MeetingTheWizard9(){
    image(backgroundImg3, 0, 0);
    if((mouseX >= 495 && mouseX <= 595)  && (mouseY >= 700 && mouseY <= 895) ) cursor(HAND);
    else cursor(ARROW);
}

public void ExploringTheTown1(){
    image(backgroundImg2, 0, 0);
    image(closedChestImg, 200, 800);
    if((mouseX >= 200 && mouseX <= 500)  && (mouseY >= 800 && mouseY <= 1060) ) cursor(HAND);
    else cursor(ARROW);
}

public void ExploringTheTown2(){
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    image(openedChestImg, 200, 100);
    if((mouseX >= 300 && mouseX <= 900)  && (mouseY >= 500 && mouseY <= 800) ) cursor(HAND);
    else cursor(ARROW);
    if(ctrlfKeyPressed) gameState = 12;
}

public void ExploringTheTown3(){
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    image(openedChestImg, 200, 100);
    dialogBox.DrawDialogBox("Deze appels zijn groen! Was er maar een manier om\nnaar een rode appel te zoeken in deze berg...", Color.WHITE);
    if(ctrlfKeyPressed) gameState = 12;
}

public void ExploringTheTown4(){
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    tint(255, 126);
    image(blackSquareImg, 0, 0);
    noTint();
    image(openedChestImg, 200, 100);
    textSize(128);
    text("CTRL-F geactiveerd!\n Voer de naam in van het object:", 50, 100);
    text(ctrlfInput, 1300, 700);
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
      if(VerifyInput(ctrlfInput, "rode appel")) gameState = 14;
      else gameState = 13;
      enterKeyPressed = false;
    }
    else if(backSpaceKeyPressed) TryToRemoveLetter();
}

public void ExploringTheTown5(){
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    tint(255, 126);
    image(blackSquareImg, 0, 0);
    noTint();
    image(openedChestImg, 200, 100);
    textSize(128);
    text("Er gebeurde niets...", 50, 100);
}

public void ExploringTheTown6(){
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    image(openedChestImg, 200, 100);
    image(redAppleImg, 500, 500);
    if((mouseX >= 500 && mouseX <= 700)  && (mouseY >= 500 && mouseY <= 700) ) cursor(HAND);
    else cursor(ARROW);
}

public void ExploringTheTown7(){
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    image(openedChestImg, 200, 100);
    tint(255, 126);
    image(blackSquareImg, 0, 0);
    noTint();
    image(bagScrollImg, 550, 0);
    image(redAppleImg, 650, 200);
    text("Rode appel\nontvangen!", 500, 800);
}

public void ExploringTheTown8(){
    backgroundImg2.resize(0,1800);
    image(backgroundImg2, 0, -700);
    image(openedChestImg, 200, 100);
    if((mouseX >= 0 && mouseX <= 1920)  && (mouseY >= 1000 && mouseY <= 1150) ) cursor(HAND);
    else cursor(ARROW);
}

public void ExploringTheTown9(){
    backgroundImg2.resize(0,1100);
    image(backgroundImg2, 0, 0);
    image(closedChestImg, 200, 800);
    if((mouseX >= 200 && mouseX <= 500)  && (mouseY >= 800 && mouseY <= 1080) ) cursor(HAND);
    else if((mouseX >= 1400 && mouseX <= 1920)  && (mouseY >= 700 && mouseY <= 1080) ) cursor(HAND);
    else cursor(ARROW);
}

public void ReturningToWizard(){
    image(backgroundImg3, 0, 0);
    image(wizardImg, 700, -75);
    dialogBox.DrawDialogBox("Heb je de appel gevonden? Ah, geef dan maar snel hier.", Color.YELLOW);
}