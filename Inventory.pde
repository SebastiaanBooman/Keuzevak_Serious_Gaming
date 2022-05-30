//Very basic Inventory class, contents returned are based on the gamestate (hardcoded)
PImage inventory_IMG;

public class Inventory{
    public void DrawInventory(int gameState, boolean drawBool){
        switch(gameState){
        case 0:
            img = loadImage("burlap-sack.png");
            image(img, 0, 0, 0, 0);
            return;
            //break;
        default:
            break;
      }
  }
}