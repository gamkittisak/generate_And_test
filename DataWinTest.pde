import java.nio.file.Paths;
import java.util.*;
class DataWinTest extends GWinData{
  private final PImage[] pimg;
  private final String name = "plate";
  private int incressing=0;
  private PApplet appc;
  private final String directoryPath= "/Documents/generate and color blindness test/data/test/";
  DataWinTest(){
    pimg= new PImage[8];
    setImage();
  }
  
  private void setImage(){
       try{
        
       Path destinationPath = Paths.get(System.getProperty("user.home"));
       File destinationFile = new File(destinationPath.toAbsolutePath()+directoryPath+name+"1.png");
       
       if(destinationFile.exists() && !destinationFile.isDirectory()){
          for(int i=0;i<pimg.length;i++){
                   pimg[i] = loadImage(destinationFile.getParent()+"/"+name+(i+1)+".png");
                }
       }
       else
          JOptionPane.showMessageDialog(frame,destinationFile.getAbsolutePath(),"file not found :",JOptionPane.ERROR_MESSAGE);
           
    }catch(NullPointerException e){
      JOptionPane.showMessageDialog(frame,e.getMessage());
    }catch(Exception e2){
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