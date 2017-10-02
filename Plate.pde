final class Plates{
  private int numberOfcircle =0;
 private int win_Plate_W,winPlate_H;
 private color[] cols;
 private color bgColor;
 private PApplet appc;
 private final int numCircle = 2440;
  
  Plates(int numberOfcircle,color[] col,color bgColor ,PApplet appc,int w,int h){
    this.numberOfcircle = numberOfcircle;
    this.cols = col;
    this.appc = appc;
    this.win_Plate_W = w;
    this.winPlate_H = h;
    this.bgColor = bgColor;
  }
  
  
  public void figureOut(){
      appc.smooth();
      appc.background(bgColor);
      appc.fill(0);
      appc.noStroke();
      
      for(int i =0;i<numCircle;i++){
          float angle = random(0,TWO_PI);
          float scalar = random(10,win_Plate_W/2);
          float x = winPlateW/2 + (cos(angle)*scalar);
          float y = winPlateH/2 + (sin(angle)*scalar);
          float mess = random(10,30);
          int col =(int)random(0,3);
          appc.fill(cols[col]);
          appc.ellipse(x,y,mess,mess);
      }
    
   }
 

}