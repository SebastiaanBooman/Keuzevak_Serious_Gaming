public class ObjectiveTwo{
  public void stepOne(){
    background(255,0,0);
    String objective1 = "Duplicate the rectangle"; //Idea is to CTRL S, CTRL C CTRL V
    rect(200, 200, 220, 220);
    textFont(f,36);
    fill(255);
    text(objective1 ,10,100);
  }
  
  public void stepTwo(){
    background(255,0,0);
    String objective1 = "Duplicate the rectangle"; //Idea is to CTRL S, CTRL C CTRL V
    //fill(0,128,0);
    rect(200, 180, 220, 220);
     
    textFont(f,36);
    fill(255);
    text(objective1 ,10,100);
    text("selected", 255, 440);
  }
  
  public void stepThree(){
    background(255,0,0);
    String objective1 = "Duplicate the rectangle"; //Idea is to CTRL S, CTRL C CTRL V
    //fill(0,128,0);
    rect(200, 180, 220, 220);
    textFont(f,36);
    fill(255);
    text(objective1 ,10,100);
    text("copied", 255, 440);
  }
  
  public void drawVictoryScreen(){
    background(0,128,0);
    String objective1 = "Well done!"; //Idea is to CTRL S, CTRL C CTRL V
    //fill(0,128,0);
    rect(200, 200, 220, 220);
    rect(600, 200, 220, 220);
    textFont(f,36);
    fill(255);
    text(objective1 ,10,100);  
  } 
}
