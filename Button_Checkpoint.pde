
Button[] myButtons;


boolean mouseReleased; 
boolean wasPressed; 

color blue = #0000FF; 
color red= #FF0000; 
color white = #000000;
color eblue = #87F6FF;
color aqua = #44FFD2;
color cyan = #DAF5FF;
color gray = #616163;
color bkg; 

void setup () {

  size (800, 800);

  myButtons = new Button[2];
  myButtons[0] = new Button("BLUE", 400, 400, 200, 200, blue, red);
  myButtons[1] = new Button("AQUA", 100, 800, 50, 50, aqua, gray);
}



void draw () {
   
  
    background (bkg); 
  
  
  int i = 0 ; 
  while ( i < 1){
    click(); 
     myButtons[i].show(); 
 
    if ( myButtons [i].clicked){
      
      bkg= myButtons[i].normal;
      
    }
       i++;
  }
}
