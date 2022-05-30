//Very basic Inventory class, contents returned are based on the gamestate (hardcoded)
public class Inventory{
    public void DrawInventory(int gameState){
        switch(gameState){
        case 0:
            //img = loadImage("burlap-sack.png");
            image(inventory_img, 0, 0);
            return;
            //break;
        default:
            break;
      }
  }
}