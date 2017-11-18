// Need G4P library
import g4p_controls.*;
import java.awt.Font;
import java.awt.*;
import javax.swing.*;
import java.nio.file.Path;
import java.nio.file.Paths;

private DataWinTest data_win_test ;
private Boxs numColor_Box1, numColor_Box2, numColor_Box3, plateColor_Box1, plateColor_Box2, plateColor_Box3;
private HashMap<RectColor, Boolean> switchColorDefault ;
private  String directoryForKeepImg = "/Documents/generate and color blindness test/data/screen/";
private final color defaultColorOfSliderWhileInit = #ff0000;
public final int boxNumColorX = 250, boxCircleColorX=480;
public final int boxColorY1 = 65, boxColorY2=95, boxColorY3=125;
public final int boxWidth = 20;
protected final int winColorW = 420,winColorH=400,winPlateW=600,winPlateH=600,winTestW=600,
                 winTestH=700,winGenW=600,winGenH=400,winAboutW=240,winAboutH=200;
protected String selectedText_Number = "0";
protected boolean canDraw = false;  // can draw plate ?
protected color bgColor_Plate = #ffffff;
protected int keyCodeOfTypePlate =0;
protected int stateKeyCodeOfTypePlate=0;
//naming of Set of Window
enum RectColor {
  numColor1, numColor2, numColor3, plateColor1, plateColor2, plateColor3
}

//init program
public void init() {
  data_win_test = new DataWinTest();
  test_win.addData(data_win_test);
  switchColorDefault = new HashMap<RectColor, Boolean>();

  //here it's set boolean for switching color when event from mouse click
  for (RectColor n : RectColor.values()) {
    switchColorDefault.put(n, false);
  }
  
  // here it's set object color sliders on each other windows
  numColor1.addData(
    (new DataGen().setInstanceHue((Hue)(new ColorSliders().getColorSlider("Hue", HSB, 400/2 - 255/2, 50, 255, 30)))
    .setInstanceSaturation((Saturation)(new ColorSliders().getColorSlider("Saturation", HSB, 400/2-255/2, 100, 255, 30)))
    .setInstanceBrightNess((BrightNess)(new ColorSliders().getColorSlider("BrightNess", GRAY, 400/2-255/2, 150, 255, 30)))).setDefaultSlider(defaultColorOfSliderWhileInit));
 
  numColor2.addData(
    (new DataGen().setInstanceHue((Hue)(new ColorSliders().getColorSlider("Hue", HSB, 400/2 - 255/2, 50, 255, 30)))
    .setInstanceSaturation((Saturation)(new ColorSliders().getColorSlider("Saturation", HSB, 400/2-255/2, 100, 255, 30)))
    .setInstanceBrightNess((BrightNess)(new ColorSliders().getColorSlider("BrightNess", GRAY, 400/2-255/2, 150, 255, 30)))).setDefaultSlider(defaultColorOfSliderWhileInit));

  numColor3.addData(
    new DataGen().setInstanceHue((Hue)(new ColorSliders().getColorSlider("Hue", HSB, 400/2 - 255/2, 50, 255, 30)))
    .setInstanceSaturation((Saturation)(new ColorSliders().getColorSlider("Saturation", HSB, 400/2-255/2, 100, 255, 30)))
    .setInstanceBrightNess((BrightNess)(new ColorSliders().getColorSlider("BrightNess", GRAY, 400/2-255/2, 150, 255, 30))).setDefaultSlider(defaultColorOfSliderWhileInit));

  plateColor1.addData(
    new DataGen().setInstanceHue((Hue)(new ColorSliders().getColorSlider("Hue", HSB, 400/2 - 255/2, 50, 255, 30)))
    .setInstanceSaturation((Saturation)(new ColorSliders().getColorSlider("Saturation", HSB, 400/2-255/2, 100, 255, 30)))
    .setInstanceBrightNess((BrightNess)(new ColorSliders().getColorSlider("BrightNess", GRAY, 400/2-255/2, 150, 255, 30))).setDefaultSlider(defaultColorOfSliderWhileInit));

  plateColor2.addData(
    new DataGen().setInstanceHue((Hue)(new ColorSliders().getColorSlider("Hue", HSB, 400/2 - 255/2, 50, 255, 30)))
    .setInstanceSaturation((Saturation)(new ColorSliders().getColorSlider("Saturation", HSB, 400/2-255/2, 100, 255, 30)))
    .setInstanceBrightNess((BrightNess)(new ColorSliders().getColorSlider("BrightNess", GRAY, 400/2-255/2, 150, 255, 30))).setDefaultSlider(defaultColorOfSliderWhileInit));

  plateColor3.addData(
    new DataGen().setInstanceHue((Hue)(new ColorSliders().getColorSlider("Hue", HSB, 400/2 - 255/2, 50, 255, 30)))
    .setInstanceSaturation((Saturation)(new ColorSliders().getColorSlider("Saturation", HSB, 400/2-255/2, 100, 255, 30)))
    .setInstanceBrightNess((BrightNess)(new ColorSliders().getColorSlider("BrightNess", GRAY, 400/2-255/2, 150, 255, 30))).setDefaultSlider(defaultColorOfSliderWhileInit));
  
      PApplet appc = (PApplet)genPlate_win;
    numColor_Box1 = new Boxs(appc, boxNumColorX, boxColorY1, boxWidth, boxWidth).create();
    numColor_Box2 = new Boxs(appc, boxNumColorX, boxColorY2, boxWidth, boxWidth).create();
    numColor_Box3 = new Boxs(appc, boxNumColorX, boxColorY3, boxWidth, boxWidth).create();

    //circle packing  color
    plateColor_Box1 = new Boxs(appc, boxCircleColorX, boxColorY1, boxWidth, boxWidth).create();
    plateColor_Box2 = new Boxs(appc, boxCircleColorX, boxColorY2, boxWidth, boxWidth).create();
    plateColor_Box3 = new Boxs(appc, boxCircleColorX, boxColorY3, boxWidth, boxWidth).create();
  
  
   //initialize Visible of each windows
  numColor1.setVisible(false);
  numColor2.setVisible(false);
  numColor3.setVisible(false);  
  plateColor1.setVisible(false);
  plateColor2.setVisible(false);
  plateColor3.setVisible(false);
  Plate.setVisible(false);
}

public void setup() {
  size(300, 300, JAVA2D);
  createGUI();
  init();
  customGUI();
  // Place your setup code here
}
public void draw() {
  background(230);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI() {
  //window
  test_win.setVisible(false);
  genPlate_win.setVisible(false);
  about_win.setVisible(false);


}

void slider(GWindow gw) {
  DataGen data = (DataGen)gw.data;
  if (data.getMouseEvent().EXIT == 2)// for recall this method
    data.focus=true;
  data.getPApplet().background(data.backgroundColor);
  data.switchColorDefault = true;
  data.hue.updateSlider();
  data.brightness.updateSlider();
  data.saturation.setHue(data.hue.color_);
  data.saturation.setBrightness(data.brightness.color_);
  data.saturation.updateSlider();
  colors(gw); //set color    
  data.getPApplet().fill(data.getColor());
  data.getPApplet().rect(400/2-255/2, 200, 150, 150);
}

void hexManual(GTextField source, GEvent event,GWindow gw) {
  String rawText = source.getText();
  DataGen dg = (DataGen)gw.data;
  if (event == GEvent.ENTERED &&  (!rawText.equals("")) && rawText.length() == 6) {
    int text = unhex(rawText);
    dg.hue.setPositionSlider(hue(text));
    dg.hue.setColor(hue(text));
    dg.saturation.setPositionSlider(saturation(text));
    dg.saturation.setColor(saturation(text));
    dg.brightness.setColor(brightness(text));
    dg.brightness.setPositionSlider(brightness(text));
  }
}


void WinGenDraw() {
  numColor_Box1.update();
  numColor_Box2.update();
  numColor_Box3.update();
  plateColor_Box1.update();
  plateColor_Box2.update();
  plateColor_Box3.update();
}


protected void colors(GWindow gw) {
  colorMode(HSB);
  DataGen dg = (DataGen)gw.data;
  float h = dg.hue.getColor();
  float s = dg.saturation.getColor();
  float b = dg.brightness.getColor();
  color c = color(h, s, b);
  dg.setColor(c);
  gw.addData(dg);
}


boolean mouseClickEvent(int x1, int y1, int x2, int y2, MouseEvent event) {
  boolean res = false;
  if (event.getX() >x1 && event.getX() <(x1+x2) && event.getY()>y1 && event.getY() <(y2+y1) && 
    (event.getAction() == 3 || event.getAction() ==1 || event.getAction() ==4))
    res =true;
  return res;
}

protected void nextTest(){
 
}
protected void previousTest(){
  
}

protected void selectDraw(PApplet appc, DataWinTest dwt,KeyEvent  kevent,int getAction,color[] cNum, color[] cCircles){
   
  if(getAction == 0x30 && kevent.getAction() == 2 || (kevent.getKeyCode() == 96 && kevent.getAction()==2)){
         drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.zero);
   }
   if(getAction ==0x31 && kevent.getAction() ==2 || (kevent.getKeyCode() == 97 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.one);
   }
   if(getAction ==0x32 && kevent.getAction() ==2 || (kevent.getKeyCode() == 98 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.two);
   }
   if(getAction ==0x33 && kevent.getAction() ==2 || (kevent.getKeyCode() == 99 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.three);
   }
   if(getAction ==0x34 && kevent.getAction() ==2 || (kevent.getKeyCode() == 100 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.four);
   }
   if(getAction ==0x35 && kevent.getAction() ==2 || (kevent.getKeyCode() == 101 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.five);
   }
   if(getAction ==0x36 && kevent.getAction() ==2 || (kevent.getKeyCode() == 102 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.six);
   }
   if(getAction ==0x37 && kevent.getAction() ==2 || (kevent.getKeyCode() == 103 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.seven);
   }
   if(getAction ==0x38 && kevent.getAction() ==2 || (kevent.getKeyCode() == 104 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.eight);
   }
   if(getAction ==0x39 && kevent.getAction() ==2 || (kevent.getKeyCode() == 105 && kevent.getAction()==2)){
      drawPlate(appc,dwt,kevent,getAction,cNum,cCircles,dwt.nine);
   }
}

private void drawPlate(PApplet appc, DataWinTest dwt,KeyEvent  kevent,int getAction,color[] cNum, color[] cCircles,String number){
   Plates p = new Plates(winTestW,cCircles,dwt.bgColor_Plate,appc,winTestW,winTestW);
   DrawNumber dn = new DrawNumber(appc,number,cNum, (winTestW/2)-50, (winTestW/2)-60 );
   p.figureOut();
   appc.scale(0.8);
   dn.figureOut();
  
}

public void saveImg(PApplet appc){
   
        try{
          String fileName = JOptionPane.showInputDialog("Save File :");
          Path destinationPath = Paths.get(System.getProperty("user.home"));
          File destinationFile = new File(destinationPath.toAbsolutePath()+"/"+directoryForKeepImg+"/"+fileName+".png");
          if(fileName.equalsIgnoreCase("")){
             JOptionPane.showMessageDialog(frame,"Plase Input FileName !!","Warning!",JOptionPane.WARNING_MESSAGE);
             saveImg(appc);
             return;
           }
           //file exists 
          if(destinationFile.exists()){
            int a = (int)JOptionPane.showConfirmDialog(frame,"FileName is already exists!! \n Do you wanna save ?","Save",JOptionPane.YES_NO_OPTION);
            if(a == 0){
                appc.save(destinationFile.getParent()+"/"+fileName+".png");
                JOptionPane.showMessageDialog(frame,"Save to "+destinationFile.getAbsolutePath(),"Successing!",JOptionPane.PLAIN_MESSAGE);  
                return;
            }
            else
              return;
          }
          //default file dosen't exists
          appc.save(destinationFile.getParent()+"/"+fileName+".png");   
          JOptionPane.showMessageDialog(frame,"Save to "+destinationFile.getAbsolutePath(),"Successing!",JOptionPane.PLAIN_MESSAGE);  
      }
        catch(NumberFormatException e){
            JOptionPane.showMessageDialog(frame,e.getMessage());
        }
  
}