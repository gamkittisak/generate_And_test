final class BrightNess extends ColorSlider{
     float color_;
     private PApplet app;
    private MouseEvent mouseEvent;
     BrightNess(int colorMode,int positionX,int positionY,int sliderW,int sliderH){
       this.colorMode = colorMode;
       this.positionX = positionX;
       this.positionY = positionY;
       this.sliderWidth = sliderW;
       this.sliderHeight = sliderH;
     }
  
     void init(){}
     
     void createColor(){
     
        for(int i=(int)sliderWidth;i>0;i--){
            float lenghtColor = map(i,0,sliderWidth,0,256);
          app.stroke(lenghtColor);
          app.line(positionX+i,positionY,positionX+i,sliderHeight+positionY);
        }
     
     }
     
     void updateSlider(){
       createColor();
       iconCurSorOnslider((int)mouseOnSlider(),positionY);
     }
     
     void iconCurSorOnslider(int positionX,int positionY){
      app.stroke(255);
      float start =this.positionX+positionX; //eazy reading (old position + new position) from MousePressed
      int w =15;
      int h = 40;
        app.fill(color_); 
        setColor(this.color_);
 
        app.rect(start-w/2,positionY-4,w,h);
  }
  
   private float mouseOnSlider() {
    if (mouseEvent != null) {
      if ( mouseEvent.getX()>positionX && mouseEvent.getX()< ((positionX+sliderWidth)+3) 
        && mouseEvent.getY()>positionY && mouseEvent.getY()<positionY+sliderHeight
        && (mouseEvent.getAction() == 1 || mouseEvent.getAction() ==4)) { 
        float target = mouseEvent.getX() - positionX;  
        color_=map(target, 0.0, sliderWidth, 0.0,sliderWidth);
        setColor(color_);
        setBrightness(color_);
      }
    }
    return this.color_;
  }
  
  public void setMouseEvent(MouseEvent mouseEvent) {this.mouseEvent = mouseEvent;}
  public void setPApplet(PApplet app) {this.app = app;}
  public void setClean(float color_){this.color_ =color_;}
  public void setPositionSlider(float color_){this.color_ = color_;}
}