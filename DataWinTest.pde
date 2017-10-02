import java.nio.file.Paths;
import java.util.*;
class DataWinTest extends GWinData{
  private final PImage[] pimg;
  private final char name = 'd';
  private int incressing=0;
  private PApplet appc;
  //private final String directoryPath= "./Documents/generate and color blindness test/data/test";
  private final String directoryPath= "./generate_And_test.app/Contents/Java/data/test";
  DataWinTest(){
    pimg= new PImage[8];
    setImage();
  }
  
  private void setImage(){
    
    try{
 
            PImage s =loadImage("./data/test/"+name+(1)+".png");
            if(s !=null)
                for(int i=0;i<pimg.length;i++){
                   pimg[i] = loadImage("./data/test/"+name+(i+1)+".png");
                 }
            else
              JOptionPane.showMessageDialog(frame,"Please check filename "+name+" : /data/test/","Files not found",JOptionPane.ERROR_MESSAGE);

        
    }catch(NullPointerException e){
      JOptionPane.showMessageDialog(frame,e.getMessage());
    }catch(ConcurrentModificationException e2){
      JOptionPane.showMessageDialog(frame,e2.getMessage());
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