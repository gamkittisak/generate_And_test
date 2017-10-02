class DataWinTest extends GWinData{
  private final PImage[] pimg;
  private final char name = 'd';
  private int incressing=0;
  private PApplet appc;
  DataWinTest(){
    pimg= new PImage[8];
    setImage();
  }
  
  private void setImage(){
    
    for(int i=0;i<pimg.length;i++){
       pimg[i] = loadImage("data/test/"+name+(i+1)+".png");
    }
    
  }
  
  public void incressing(){if(incressing!=7)incressing++;}
  public void setIncressing(int v){incressing =  v;}
  public void setPApplet(PApplet appc){this.appc = appc;}
  public int getIncressing(){return incressing;}
  public PApplet getPApplet(){return appc;}
  public DataWinTest getDataWinTest(){return  this;}
  public PImage[] getPImgArray(){ return pimg;}
  public PImage getPimg(){
    return pimg[incressing];
  }
}