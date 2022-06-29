public void LoadImages(){
    backgroundImg1 = loadImage("background1.jpg");

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

    redAppleImg = loadImage("red-apple.png");
    redAppleImg.resize(0, 200);
}

public void SetupFonts(){
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  textFont(f,50);
}