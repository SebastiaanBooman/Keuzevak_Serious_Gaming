public void TryToAddLetter(char letter){
  if(valuesEntered >= ctrlfInput.length()){}
  else{
    ctrlfInputArr[valuesEntered] = letter;
    ctrlfInput = String.valueOf(ctrlfInputArr);
    valuesEntered = valuesEntered + 1;
  }
}

public void TryToRemoveLetter(){
  if(valuesEntered == 0){
    gameState = 10;
    return;
  }
  else if (valuesEntered == 5) ctrlfInputArr[valuesEntered-1] = ' ';
  else ctrlfInputArr[valuesEntered-1] = '.';
  ctrlfInput = String.valueOf(ctrlfInputArr);
  valuesEntered = valuesEntered - 1;
}

public boolean VerifyInput(String input, String expected){
  if(input.equals(expected)){
    return true;
  } 
  return false;
}