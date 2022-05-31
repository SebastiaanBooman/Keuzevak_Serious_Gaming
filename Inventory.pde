//Very basic Inventory class, contents returned are based on the gamestate (hardcoded)
public class Inventory{
    public void DrawInventory(int gameState){
        switch(gameState){
        case 0:
            //img = loadImage("burlap-sack.png");
            image(inventoryImg1, 0, 0);
            return;
        case 1:
            image(inventoryImg2, 0, 0);
            return;
        default:
            break;
      }
  }
}