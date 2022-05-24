public class DialogBox{
  public void DrawDialogBox(String dialog){
    //background(255,0,0);
    textFont(f,50);
    fill(0);
    rect(100, 820, 1720, 200);
    fill(255);
    text(dialog , 100 , 880);
  }
}