class Button {

  int x, y, w, h ; // x , y is the center
  boolean clicked;
  color highlight, normal;
  String text;
  








  Button (String t, int _x, int _y, int _w, int _h, color norm, color high) {

    x=_x;
    y= _y;
    w = _w;
    h = _h;
    highlight = high;
    normal = norm;
    clicked = false;
    text = t; 
  }


  void show () {

    drawButton();

    drawLabel();

    checkForClick();
  }




  boolean touchingMouse() {

    return mouseX > x-w/2 && mouseX< x+w/2 && mouseY >y-h/2 && mouseY< y+h/2;
  }

  void drawButton() {


    rectMode ( CENTER);

    if ( touchingMouse()) {
      fill(highlight);
    } else {
      fill (normal);
    }
    stroke ( 0);
    strokeWeight ( 4);
    rect ( x, y, w, h, 30);
  }
  void drawLabel() {



    //text label
    textAlign ( CENTER, CENTER);
    if (touchingMouse()) {
      fill (normal);
    } else {

      fill (highlight);
    }
    textSize( w/4);
    text ( text , x, y);
  }


  void checkForClick() {
    if (mouseReleased && touchingMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
