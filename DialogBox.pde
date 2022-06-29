public class DialogBox{
  public void DrawDialogBox(String dialog, Color colour){
    //background(255,0,0);
    textSize(50);
    fill(0);
    rect(100, 820, 1720, 200);
    if(colour == Color.YELLOW) fill(#FFFF00);
    else if (colour == Color.WHITE) fill(255);
    text(dialog , 100 , 880);
  }
}