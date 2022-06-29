void keyPressed(){
  if(keyCode == ENTER) enterKeyPressed = true;
  if(keyCode == CONTROL) controlKeyPressed = true;
  if(keyCode == 8) backSpaceKeyPressed = true;
  else if(keyCode == 70 && controlKeyPressed) ctrlfKeyPressed = true; //f 
  else if(keyCode == 65) aKeyPressed = true; //a
  else if(keyCode == 66) bKeyPressed = true; //b
  else if(keyCode == 67) cKeyPressed = true; //c
  else if(keyCode == 68) dKeyPressed = true; //d
  else if(keyCode == 69) eKeyPressed = true; //e
  else if(keyCode == 70) fKeyPressed = true; //f
  else if(keyCode == 71) gKeyPressed = true; //g
  else if(keyCode == 72) hKeyPressed = true; //h
  else if(keyCode == 73) iKeyPressed = true; //i
  else if(keyCode == 74) jKeyPressed = true; //j
  else if(keyCode == 75) kKeyPressed = true; //k
  else if(keyCode == 76) lKeyPressed = true; //l
  else if(keyCode == 77) mKeyPressed = true; //m
  else if(keyCode == 78) nKeyPressed = true; //n
  else if(keyCode == 79) oKeyPressed = true; //o
  else if(keyCode == 80) pKeyPressed = true; //p
  else if(keyCode == 81) qKeyPressed = true; //q
  else if(keyCode == 82) rKeyPressed = true; //r
  else if(keyCode == 83) sKeyPressed = true; //s
  else if(keyCode == 84) tKeyPressed = true; //t
  else if(keyCode == 85) uKeyPressed = true; //u
  else if(keyCode == 86) vKeyPressed = true; //v
  else if(keyCode == 87) wKeyPressed = true; //w
  else if(keyCode == 88) xKeyPressed = true; //x
  else if(keyCode == 89) yKeyPressed = true; //y
  else if(keyCode == 90) zKeyPressed = true; //z
  
  else if(keyCode == 32) spacebarPressed = true; //spacebar
  
}

void keyReleased(){  
  switch(keyCode){
  case 8: backSpaceKeyPressed = false; //backspace
  case ENTER: enterKeyPressed = false; //enter
  
  case 65: aKeyPressed = false; //a
  case 66: bKeyPressed = false; //b
  case 67: cKeyPressed = false; //c
  case 68: dKeyPressed = false; //d
  
  case 69: eKeyPressed = false; //e
  case 70:
    fKeyPressed = false; //f
    ctrlfKeyPressed = false; // f
  case 71: gKeyPressed = false; //g
  case 72: hKeyPressed = false; //h
  case 73: iKeyPressed = false; //i
  case 74: jKeyPressed = false; //j
  case 75: kKeyPressed = false; //k
  
  case 76: lKeyPressed = false; //l
  case 77: mKeyPressed = false; //m
  case 78: nKeyPressed = false; //n
  case 79: oKeyPressed = false; //o
  case 80: pKeyPressed = false; //p
  case 81: qKeyPressed = false; //q
  case 82: rKeyPressed = false; //r
  case 83: sKeyPressed = false; //s
  case 84: tKeyPressed = false; //t
  case 85: uKeyPressed = false; //u
  case 86: vKeyPressed = false; //v
  case 87: wKeyPressed = false; //w
  case 88: xKeyPressed = false; //x
  case 89: yKeyPressed = false; //y
  case 90: zKeyPressed = false; //z
  
  case CONTROL: controlKeyPressed = false;
  case 32: spacebarPressed = false;
  }
}