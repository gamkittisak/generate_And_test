/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void btn_test_click(GButton source, GEvent event) { //_CODE_:btn_test:760916:
 test_win.setVisible(true);
} //_CODE_:btn_test:760916:

public void btn_genPlate_click(GButton source, GEvent event) { //_CODE_:genPlate_btn:898926:
  genPlate_win.setVisible(true);
} //_CODE_:genPlate_btn:898926:

public void btn_about_click(GButton source, GEvent event) { //_CODE_:about_btn:656178:
 about_win.setVisible(true);
} //_CODE_:about_btn:656178:

synchronized public void win_test(PApplet appc, GWinData data) { //_CODE_:test_win:774056:
  appc.background(230);
  // set visible 
  if(data_win_test.getIncressing() >0)
       restart_btn_test.setVisible(true);
  appc.image(data_win_test.getPimg(),0,0);
} //_CODE_:test_win:774056:

synchronized public void win_test_mouse(PApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:test_win:386781:
} //_CODE_:test_win:386781:

synchronized public void win_test_key(PApplet appc, GWinData data, KeyEvent kevent) { //_CODE_:test_win:368697:
  if(kevent.getKeyCode() == 39 && kevent.getAction() == 2){
       nextTest();
  }
   if(kevent.getKeyCode() ==37 && kevent.getAction() ==2){
       previousTest(); 
   }
} //_CODE_:test_win:386781:

public void next_btn_click(GButton source, GEvent event) { //_CODE_:next_btn:635315:
   nextTest();
} //_CODE_:next_btn:635315:

public void restart_btn_click(GButton source, GEvent event) { //_CODE_:restart_btn_test:541928:
  if(data_win_test.getIncressing() >=1){
     data_win_test.setIncressing(0);
    restart_btn_test.setVisible(false);
  }
 
} //_CODE_:restart_btn_test:541928:

public void pre_btn_click(GButton source, GEvent event) { //_CODE_:pre_btn:385654:
   previousTest();
} //_CODE_:pre_btn:385654:

synchronized public void genPlate_draw(PApplet appc, GWinData data) { //_CODE_:genPlate_win:259886:
  appc.background(203);
  WinGenDraw();
  // call mouse event and sent param
  
} //_CODE_:genPlate_win:259886:

synchronized public void genPlate_mouse(PApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:genPlate_win:734553:
      
      if(mouseClickEvent(numColor_Box1.getX(),numColor_Box1.getY(),numColor_Box1.getWidth(),numColor_Box1.getHeight(),mevent)){
        numColor1.setVisible(true);
        ((DataGen)numColor1.data).switchColorDefault=true; 
        
      }
      if(mouseClickEvent(numColor_Box2.getX(),numColor_Box2.getY(),numColor_Box2.getWidth(),numColor_Box2.getHeight(),mevent)){
          numColor2.setVisible(true);
          ((DataGen)numColor2.data).switchColorDefault=true;    
      }
      if(mouseClickEvent(numColor_Box3.getX(),numColor_Box3.getY(),numColor_Box3.getWidth(),numColor_Box3.getHeight(),mevent)){
          numColor3.setVisible(true);
         ((DataGen)numColor3.data).switchColorDefault=true;   
      }
      if(mouseClickEvent(plateColor_Box1.getX(),plateColor_Box1.getY(),plateColor_Box1.getWidth(),plateColor_Box1.getHeight(),mevent)){
          plateColor1.setVisible(true);
         ((DataGen)plateColor1.data).switchColorDefault=true;  
    }
      if(mouseClickEvent(plateColor_Box2.getX(),plateColor_Box2.getY(),plateColor_Box2.getWidth(),plateColor_Box2.getHeight(),mevent)){
          plateColor2.setVisible(true);
          ((DataGen)plateColor2.data).switchColorDefault=true;  
    }
      if(mouseClickEvent(plateColor_Box3.getX(),plateColor_Box3.getY(),plateColor_Box3.getWidth(),plateColor_Box3.getHeight(),mevent)){
          plateColor3.setVisible(true);
          ((DataGen)plateColor3.data).switchColorDefault=true;
      }

} //_CODE_:genPlate_win:734553:

public void reset_click(GButton source, GEvent event) { //_CODE_:Reset:586008:
     
    numColor_Box1.setColor(#ffffff);
    numColor_Box2.setColor(#ffffff);
    numColor_Box3.setColor(#ffffff);
    plateColor_Box1.setColor(#ffffff);
    plateColor_Box2.setColor(#ffffff);
    plateColor_Box3.setColor(#ffffff);

   
} //_CODE_:Reset:586008:

public void generate_btn_click(GButton source, GEvent event) { //_CODE_:generate_plate:827632:
    
   if(numColor_Box1.isChange() && numColor_Box2.isChange() && numColor_Box3.isChange() && plateColor_Box1.isChange()
   && plateColor_Box2.isChange() && plateColor_Box3.isChange() && !selectedText_Number.equals(null)){
       canDraw = true;
       isSave=false;
       Plate.setVisible(true);
   }
       
} //_CODE_:generate_plate:827632:

public void Number_list_click(GDropList source, GEvent event) { //_CODE_:setNumber:736706:
  selectedText_Number = source.getSelectedText();
} //_CODE_:setNumber:736706:

synchronized public void about_draw(PApplet appc, GWinData data) { //_CODE_:about_win:343052:
  appc.background(255);
} //_CODE_:about_win:343052:

synchronized public void win_numColor1_draw(PApplet appc, GWinData data) { //_CODE_:numColor1:252003:
  
  
} //_CODE_:numColor1:252003:

synchronized public void numColor1_mouse(PApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:numColor1:540532:
    appc.colorMode(HSB);
    if(((DataGen)numColor1.data).switchColorDefault)
      {numColor_Box1.setColor(((DataGen)numColor1.data).getColor());}
    ((DataGen)numColor1.data).setPApplet(appc).setMouseEvent(mevent);
    slider(numColor1); 
    numColor1_redLB.setText(red(((DataGen)numColor1.data).getColor())+"");
    numColor1_greenLB.setText(green(((DataGen)numColor1.data).getColor())+"");
    numColor1_blueLB.setText(blue(((DataGen)numColor1.data).getColor())+"");
    numColor1_hexLB.setText(hex(((DataGen)numColor1.data).getColor(),6));

} //_CODE_:numColor1:540532:

public void numColor1_change(GTextField source, GEvent event) { //_CODE_:numColor1_txt:537032:
  String rawText = source.getText();
   hexManual(source,event,numColor1);//set color with hex 
   numColor1_mouse(((DataGen)numColor1.data).getPApplet(),((DataGen)numColor1.data),((DataGen)numColor1.data).getMouseEvent());
  if(rawText.length() > 6 || rawText.length() < 6)
     colorNum1_warningLB.setText("must be equals 6");
  else 
    colorNum1_warningLB.setText("");
} //_CODE_:numColor1_txt:537032:

synchronized public void win_numColor2_draw(PApplet appc, GWinData data) { //_CODE_:numColor2:326252:
  appc.colorMode(HSB);
 
} //_CODE_:numColor2:326252:

synchronized public void numColor2_mouse(PApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:numColor2:494837:
    if(((DataGen)numColor2.data).switchColorDefault)
        {numColor_Box2.setColor(((DataGen)numColor2.data).getColor());}
    ((DataGen)numColor2.data).setPApplet(appc).setMouseEvent(mevent);
    slider(numColor2); 
    numColor2_redLB.setText(red(((DataGen)numColor2.data).getColor())+"");
    numColor2_greenLB.setText(green(((DataGen)numColor2.data).getColor())+"");
    numColor2_blueLB.setText(blue(((DataGen)numColor2.data).getColor())+"");
    numColor2_hexLB.setText(hex(((DataGen)numColor2.data).getColor(),6));
} //_CODE_:numColor2:494837:

public void numColor2_change(GTextField source, GEvent event) { //_CODE_:numColor2_txt:617321:
  String rawText = source.getText();
   hexManual(source,event,numColor2);//set color with hex 
   numColor2_mouse(((DataGen)numColor2.data).getPApplet(),((DataGen)numColor2.data),((DataGen)numColor2.data).getMouseEvent());
  if(rawText.length() > 6 || rawText.length() < 6)
     numColor2_warningLB.setText("must be equals 6");
  else 
    numColor2_warningLB.setText("");
} //_CODE_:numColor2_txt:617321:

synchronized public void win_numColor3_draw(PApplet appc, GWinData data) { //_CODE_:numColor3:744512:
  appc.colorMode(HSB);
  
} //_CODE_:numColor3:744512:

synchronized public void numColor3_mouse(PApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:numColor3:985261:
    if(((DataGen)numColor3.data).switchColorDefault)
      {numColor_Box3.setColor(((DataGen)numColor3.data).getColor());}
    ((DataGen)numColor3.data).setPApplet(appc).setMouseEvent(mevent);
    slider(numColor3);
    numColor3_redLB.setText(red(((DataGen)numColor3.data).getColor())+"");
    numColor3_greenLB.setText(green(((DataGen)numColor3.data).getColor())+"");
    numColor3_blueLB.setText(blue(((DataGen)numColor3.data).getColor())+"");
    numColor3_hexLB.setText(hex(((DataGen)numColor3.data).getColor(),6));
} //_CODE_:numColor3:985261:

public void numColor3_change(GTextField source, GEvent event) { //_CODE_:numColor3_txt:478325:
  String rawText = source.getText();
   hexManual(source,event,numColor3);//set color with hex 
   numColor3_mouse(((DataGen)numColor3.data).getPApplet(),((DataGen)numColor3.data),((DataGen)numColor3.data).getMouseEvent());
  if(rawText.length() > 6 || rawText.length() < 6)
     numColor3_warningLB.setText("must be equals 6");
  else 
    numColor3_warningLB.setText("");
} //_CODE_:numColor3_txt:478325:

synchronized public void win_plateColor1_draw(PApplet appc, GWinData data) { //_CODE_:plateColor1:221556:
 appc.colorMode(HSB);
  
} //_CODE_:plateColor1:221556:

synchronized public void plateColor1_mouse(PApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:plateColor1:699315:
    if(((DataGen)plateColor1.data).switchColorDefault)
          {plateColor_Box1.setColor(((DataGen)plateColor1.data).getColor());}
    ((DataGen)plateColor1.data).setPApplet(appc).setMouseEvent(mevent);
    slider(plateColor1);
    plateColor1_redLB.setText(red(((DataGen)plateColor1.data).getColor())+"");
    plateColor1_greenLB.setText(green(((DataGen)plateColor1.data).getColor())+"");
    plateColor1_blueLB.setText(blue(((DataGen)plateColor1.data).getColor())+"");
    plateColor1_hexLB.setText(hex(((DataGen)plateColor1.data).getColor(),6));
} //_CODE_:plateColor1:699315:

public void plateColo1_change(GTextField source, GEvent event) { //_CODE_:plateColor1_txt:324405:
  String rawText = source.getText();
  hexManual(source,event,plateColor1);//set color with hex 
  plateColor1_mouse(((DataGen)plateColor1.data).getPApplet(),((DataGen)plateColor1.data),((DataGen)plateColor1.data).getMouseEvent());//update window by mouse event      
  if(rawText.length() > 6 || rawText.length() < 6)
     plateColor1_warningLB.setText("must be equals 6");
  else 
    plateColor1_warningLB.setText("");
} //_CODE_:plateColor1_txt:324405:

synchronized public void win_plateColor2_draw(PApplet appc, GWinData data) { //_CODE_:plateColor2:942655:
  appc.colorMode(HSB);
} //_CODE_:plateColor2:942655:

synchronized public void plateColor2_mouse(PApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:plateColor2:560903:
    if(((DataGen)plateColor2.data).switchColorDefault)
      {plateColor_Box2.setColor(((DataGen)plateColor2.data).getColor());}
   ((DataGen)plateColor2.data).setPApplet(appc).setMouseEvent(mevent);
    slider(plateColor2);
    plateColor2_redLB.setText(red(((DataGen)plateColor2.data).getColor())+"");
    plateColor2_greenLB.setText(green(((DataGen)plateColor2.data).getColor())+"");
    plateColor2_blueLB.setText(blue(((DataGen)plateColor2.data).getColor())+"");
    plateColor2_hexLB.setText(hex(((DataGen)plateColor2.data).getColor(),6));
} //_CODE_:plateColor2:560903:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:854692:
  String rawText = source.getText();
  hexManual(source,event,plateColor2);//set color with hex 
  plateColor2_mouse(((DataGen)plateColor2.data).getPApplet(),((DataGen)plateColor2.data),((DataGen)plateColor2.data).getMouseEvent());//update window by mouse event
  if(rawText.length() > 6 || rawText.length() < 6)
     plateColor2_warningLB.setText("must be equals 6");
  else 
    plateColor2_warningLB.setText("");
} //_CODE_:textfield1:854692:

synchronized public void win_plateColor3_draw(PApplet appc, GWinData data) { //_CODE_:plateColor3:347419:
   appc.colorMode(HSB);
} //_CODE_:plateColor3:347419:

synchronized public void plateColor3_mouse(PApplet appc, GWinData data, MouseEvent mevent) { //_CODE_:plateColor3:516920:
    if(((DataGen)plateColor3.data).switchColorDefault)
      {plateColor_Box3.setColor(((DataGen)plateColor3.data).getColor());}
   ((DataGen)plateColor3.data).setPApplet(appc).setMouseEvent(mevent);
    slider(plateColor3);
    plateColor3_redLB.setText(red(((DataGen)plateColor3.data).getColor())+"");
    plateColor3_greenLB.setText(green(((DataGen)plateColor3.data).getColor())+"");
    plateColor3_blueLB.setText(blue(((DataGen)plateColor3.data).getColor())+"");
    plateColor3_hexLB.setText(hex(((DataGen)plateColor3.data).getColor(),6));
} //_CODE_:plateColor3:516920:

public void textfield2_change1(GTextField source, GEvent event) { //_CODE_:textfield2:792601:
  String rawText = source.getText();
  hexManual(source,event,plateColor3);//set color with hex 
  plateColor3_mouse(((DataGen)plateColor3.data).getPApplet(),((DataGen)plateColor3.data),((DataGen)plateColor3.data).getMouseEvent());//update window by mouse event
  
  if(rawText.length() > 6 || rawText.length() < 6)
     plateColor3_warningLB.setText("must be equals 6");
  else 
    plateColor3_warningLB.setText("");
} //_CODE_:textfield2:792601:

synchronized public void win_plate(PApplet appc, GWinData data) { //_CODE_:Plate:593044:
  if(canDraw){
          canDraw = false;
          color[] cNum ={numColor_Box1.getColor(),numColor_Box2.getColor(),numColor_Box3.getColor()};
          color[] cPlate = {plateColor_Box1.getColor(), plateColor_Box2.getColor(),plateColor_Box3.getColor()};
          Plates p = new Plates(winPlateW,cPlate,bgColor_Plate,appc,winPlateW,winPlateH);
          DrawNumber dn = new DrawNumber(appc,selectedText_Number,cNum, (winPlateW/2)-50, (winPlateH/2)-60 );
          p.figureOut();
          appc.scale(0.8);
          dn.figureOut();

  }
} //_CODE_:Plate:593044:

synchronized public void savePlate_key(PApplet appc, GWinData data, KeyEvent kevent) { //_CODE_:Plate:785237:
 if(isSave == false){
  if(kevent.getKeyCode() == 83 ){
        String filename= JOptionPane.showInputDialog("Save File");
        if(!filename.equalsIgnoreCase("")){
            //String path= Paths.get(directoryForKeepImg).toAbsolutePath().normalize().toString();
            appc.save("./screen/"+filename+".png");
            JOptionPane.showMessageDialog(frame, "Save complated to :"+"./data/screen/"+filename);
            isSave = true;
        }else{
          JOptionPane.showMessageDialog(frame, "please Input FileName :","warning",JOptionPane.WARNING_MESSAGE);
        }
  }
 } 
 } //_CODE_:Plate:572166:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Main Sketch");
  btn_test = new GButton(this, 110, 62, 80, 30);
  btn_test.setText("Test");
  btn_test.addEventHandler(this, "btn_test_click");
  genPlate_btn = new GButton(this, 95, 114, 110, 30);
  genPlate_btn.setText("Generate Plate");
  genPlate_btn.addEventHandler(this, "btn_genPlate_click");
  about_btn = new GButton(this, 110, 161, 80, 30);
  about_btn.setText("About");
  about_btn.addEventHandler(this, "btn_about_click");
  test_win = GWindow.getWindow(this, "Color blindness test", 0, 0, 600, 700, JAVA2D);
  test_win.noLoop();
  test_win.addDrawHandler(this, "win_test");
  test_win.addMouseHandler(this, "win_test_mouse");
  test_win.addKeyHandler(this, "win_test_key");
  next_btn = new GButton(test_win, 471, 648, 80, 30);
  next_btn.setText("Next");
  next_btn.addEventHandler(this, "next_btn_click");
  restart_btn_test = new GButton(test_win, 249, 649, 80, 30);
  restart_btn_test.setText("Restart");
  restart_btn_test.addEventHandler(this, "restart_btn_click");
  pre_btn = new GButton(test_win, 43, 650, 80, 30);
  pre_btn.setText("Previous");
  pre_btn.addEventHandler(this, "pre_btn_click");
  genPlate_win = GWindow.getWindow(this, "Generate plate", 0, 0, 600, 400, JAVA2D);
  genPlate_win.noLoop();
  genPlate_win.addDrawHandler(this, "genPlate_draw");
  genPlate_win.addMouseHandler(this, "genPlate_mouse");
  Reset = new GButton(genPlate_win, 352, 277, 80, 30);
  Reset.setText("Reset");
  Reset.addEventHandler(this, "reset_click");
  Number = new GLabel(genPlate_win, 30, 23, 80, 20);
  Number.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Number.setText("Number");
  Number.setOpaque(false);
  setNum = new GLabel(genPlate_win, 190, 20, 120, 20);
  setNum.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  setNum.setText("Color set number");
  setNum.setOpaque(false);
  setcircle = new GLabel(genPlate_win, 404, 22, 140, 20);
  setcircle.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  setcircle.setText("Color set circle packing");
  setcircle.setOpaque(false);
  generate_plate = new GButton(genPlate_win, 149, 277, 80, 30);
  generate_plate.setText("Generate");
  generate_plate.addEventHandler(this, "generate_btn_click");
  setNumber = new GDropList(genPlate_win, 29, 65, 90, 200, 9);
  setNumber.setItems(loadStrings("list_736706"), 0);
  setNumber.addEventHandler(this, "Number_list_click");
  about_win = GWindow.getWindow(this, "About", 0, 0, 240, 200, JAVA2D);
  about_win.noLoop();
  about_win.addDrawHandler(this, "about_draw");
  label1 = new GLabel(about_win, 50, 131, 140, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("gamkittisak@gmail.com");
  label1.setOpaque(false);
  label2 = new GLabel(about_win, 70, 23, 100, 23);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText(" Develop By");
  label2.setOpaque(false);
  label3 = new GLabel(about_win, 48, 59, 144, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Kittisak Pemsiriudomroek");
  label3.setOpaque(false);
  label26 = new GLabel(about_win, 80, 90, 80, 20);
  label26.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label26.setText("Contract me");
  label26.setOpaque(false);
  numColor1 = GWindow.getWindow(this, "color1", 0, 0, 400, 420, JAVA2D);
  numColor1.noLoop();
  numColor1.addDrawHandler(this, "win_numColor1_draw");
  numColor1.addMouseHandler(this, "numColor1_mouse");
  redColor1 = new GLabel(numColor1, 274, 215, 40, 22);
  redColor1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  redColor1.setText("Red");
  redColor1.setLocalColorScheme(GCScheme.SCHEME_9);
  redColor1.setOpaque(false);
  greenColor1 = new GLabel(numColor1, 274, 250, 40, 20);
  greenColor1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  greenColor1.setText("Green");
  greenColor1.setLocalColorScheme(GCScheme.SCHEME_9);
  greenColor1.setOpaque(false);
  blueColor1 = new GLabel(numColor1, 274, 282, 40, 20);
  blueColor1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  blueColor1.setText("Blue");
  blueColor1.setLocalColorScheme(GCScheme.SCHEME_9);
  blueColor1.setOpaque(false);
  numColor1_redLB = new GLabel(numColor1, 319, 216, 80, 20);
  numColor1_redLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor1_redLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor1_redLB.setOpaque(false);
  numColor1_greenLB = new GLabel(numColor1, 320, 250, 80, 20);
  numColor1_greenLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor1_greenLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor1_greenLB.setOpaque(false);
  numColor1_blueLB = new GLabel(numColor1, 321, 281, 80, 20);
  numColor1_blueLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor1_blueLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor1_blueLB.setOpaque(false);
  numColor1_hexLB = new GLabel(numColor1, 321, 311, 80, 19);
  numColor1_hexLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor1_hexLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor1_hexLB.setOpaque(false);
  label4 = new GLabel(numColor1, 275, 312, 40, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Hex");
  label4.setLocalColorScheme(GCScheme.SCHEME_9);
  label4.setOpaque(false);
  numColor1_txt = new GTextField(numColor1, 306, 342, 89, 28, G4P.SCROLLBARS_NONE);
  numColor1_txt.setOpaque(true);
  numColor1_txt.addEventHandler(this, "numColor1_change");
  label5 = new GLabel(numColor1, 272, 341, 30, 20);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("#");
  label5.setLocalColorScheme(GCScheme.SCHEME_9);
  label5.setOpaque(false);
  colorNum1_warningLB = new GLabel(numColor1, 292, 377, 104, 20);
  colorNum1_warningLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  colorNum1_warningLB.setLocalColorScheme(GCScheme.RED_SCHEME);
  colorNum1_warningLB.setOpaque(false);
  numColor2 = GWindow.getWindow(this, "color2", 0, 0, 400, 420, JAVA2D);
  numColor2.noLoop();
  numColor2.addDrawHandler(this, "win_numColor2_draw");
  numColor2.addMouseHandler(this, "numColor2_mouse");
  numColor2_redLB = new GLabel(numColor2, 320, 216, 80, 20);
  numColor2_redLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor2_redLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor2_redLB.setOpaque(false);
  numColor2_greenLB = new GLabel(numColor2, 320, 250, 80, 20);
  numColor2_greenLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor2_greenLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor2_greenLB.setOpaque(false);
  numColor2_blueLB = new GLabel(numColor2, 320, 280, 80, 20);
  numColor2_blueLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor2_blueLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor2_blueLB.setOpaque(false);
  numColor2_hexLB = new GLabel(numColor2, 320, 310, 80, 20);
  numColor2_hexLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor2_hexLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor2_hexLB.setOpaque(false);
  label10 = new GLabel(numColor2, 272, 341, 30, 20);
  label10.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label10.setText("#");
  label10.setLocalColorScheme(GCScheme.SCHEME_9);
  label10.setOpaque(false);
  numColor2_txt = new GTextField(numColor2, 306, 342, 90, 30, G4P.SCROLLBARS_NONE);
  numColor2_txt.setOpaque(true);
  numColor2_txt.addEventHandler(this, "numColor2_change");
  numColor2_warningLB = new GLabel(numColor2, 292, 377, 104, 20);
  numColor2_warningLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor2_warningLB.setLocalColorScheme(GCScheme.RED_SCHEME);
  numColor2_warningLB.setOpaque(false);
  label6 = new GLabel(numColor2, 275, 215, 40, 20);
  label6.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label6.setText("Red");
  label6.setLocalColorScheme(GCScheme.SCHEME_9);
  label6.setOpaque(false);
  label12 = new GLabel(numColor2, 274, 250, 40, 20);
  label12.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label12.setText("Green");
  label12.setLocalColorScheme(GCScheme.SCHEME_9);
  label12.setOpaque(false);
  asd = new GLabel(numColor2, 275, 282, 40, 20);
  asd.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  asd.setText("Blue");
  asd.setLocalColorScheme(GCScheme.SCHEME_9);
  asd.setOpaque(false);
  label13 = new GLabel(numColor2, 275, 312, 40, 20);
  label13.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label13.setText("Hex");
  label13.setLocalColorScheme(GCScheme.SCHEME_9);
  label13.setOpaque(false);
  numColor3 = GWindow.getWindow(this, "color3", 0, 0, 400, 420, JAVA2D);
  numColor3.noLoop();
  numColor3.addDrawHandler(this, "win_numColor3_draw");
  numColor3.addMouseHandler(this, "numColor3_mouse");
  numColor3_redLB = new GLabel(numColor3, 320, 216, 80, 19);
  numColor3_redLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor3_redLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor3_redLB.setOpaque(false);
  numColor3_greenLB = new GLabel(numColor3, 320, 250, 80, 20);
  numColor3_greenLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor3_greenLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor3_greenLB.setOpaque(false);
  numColor3_blueLB = new GLabel(numColor3, 320, 281, 80, 20);
  numColor3_blueLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor3_blueLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor3_blueLB.setOpaque(false);
  label11 = new GLabel(numColor3, 274, 215, 30, 20);
  label11.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label11.setText("Red");
  label11.setLocalColorScheme(GCScheme.SCHEME_9);
  label11.setOpaque(false);
  label14 = new GLabel(numColor3, 274, 250, 40, 20);
  label14.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label14.setText("Green");
  label14.setLocalColorScheme(GCScheme.SCHEME_9);
  label14.setOpaque(false);
  label15 = new GLabel(numColor3, 274, 282, 40, 20);
  label15.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label15.setText("Blue");
  label15.setLocalColorScheme(GCScheme.SCHEME_9);
  label15.setOpaque(false);
  numColor3_txt = new GTextField(numColor3, 306, 342, 90, 30, G4P.SCROLLBARS_NONE);
  numColor3_txt.setOpaque(true);
  numColor3_txt.addEventHandler(this, "numColor3_change");
  numColor3_hexLB = new GLabel(numColor3, 320, 311, 80, 20);
  numColor3_hexLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor3_hexLB.setLocalColorScheme(GCScheme.SCHEME_9);
  numColor3_hexLB.setOpaque(false);
  numColor3_warningLB = new GLabel(numColor3, 292, 377, 100, 20);
  numColor3_warningLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  numColor3_warningLB.setLocalColorScheme(GCScheme.RED_SCHEME);
  numColor3_warningLB.setOpaque(false);
  label18 = new GLabel(numColor3, 274, 311, 40, 20);
  label18.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label18.setText("Hex");
  label18.setLocalColorScheme(GCScheme.SCHEME_9);
  label18.setOpaque(false);
  label19 = new GLabel(numColor3, 272, 341, 20, 20);
  label19.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label19.setText("#");
  label19.setLocalColorScheme(GCScheme.SCHEME_9);
  label19.setOpaque(false);
  plateColor1 = GWindow.getWindow(this, "color1", 0, 0, 400, 420, JAVA2D);
  plateColor1.noLoop();
  plateColor1.addDrawHandler(this, "win_plateColor1_draw");
  plateColor1.addMouseHandler(this, "plateColor1_mouse");
  a = new GLabel(plateColor1, 274, 216, 40, 20);
  a.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  a.setText("Red");
  a.setLocalColorScheme(GCScheme.SCHEME_9);
  a.setOpaque(false);
  b = new GLabel(plateColor1, 274, 250, 40, 20);
  b.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  b.setText("Green");
  b.setLocalColorScheme(GCScheme.SCHEME_9);
  b.setOpaque(false);
  c = new GLabel(plateColor1, 274, 282, 40, 20);
  c.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  c.setText("Blue");
  c.setLocalColorScheme(GCScheme.SCHEME_9);
  c.setOpaque(false);
  plateColor1_redLB = new GLabel(plateColor1, 320, 216, 80, 20);
  plateColor1_redLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor1_redLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor1_redLB.setOpaque(false);
  plateColor1_greenLB = new GLabel(plateColor1, 320, 250, 80, 20);
  plateColor1_greenLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor1_greenLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor1_greenLB.setOpaque(false);
  plateColor1_blueLB = new GLabel(plateColor1, 320, 281, 80, 20);
  plateColor1_blueLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor1_blueLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor1_blueLB.setOpaque(false);
  label7 = new GLabel(plateColor1, 275, 312, 30, 20);
  label7.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label7.setText("Hex");
  label7.setLocalColorScheme(GCScheme.SCHEME_9);
  label7.setOpaque(false);
  plateColor1_hexLB = new GLabel(plateColor1, 320, 311, 80, 20);
  plateColor1_hexLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor1_hexLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor1_hexLB.setOpaque(false);
  label8 = new GLabel(plateColor1, 272, 341, 30, 20);
  label8.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label8.setText("#");
  label8.setLocalColorScheme(GCScheme.SCHEME_9);
  label8.setOpaque(false);
  plateColor1_txt = new GTextField(plateColor1, 306, 342, 90, 30, G4P.SCROLLBARS_NONE);
  plateColor1_txt.setOpaque(true);
  plateColor1_txt.addEventHandler(this, "plateColo1_change");
  plateColor1_warningLB = new GLabel(plateColor1, 292, 377, 100, 20);
  plateColor1_warningLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor1_warningLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor1_warningLB.setOpaque(false);
  plateColor2 = GWindow.getWindow(this, "color2", 0, 0, 400, 420, JAVA2D);
  plateColor2.noLoop();
  plateColor2.addDrawHandler(this, "win_plateColor2_draw");
  plateColor2.addMouseHandler(this, "plateColor2_mouse");
  plateColor2_redLB = new GLabel(plateColor2, 320, 216, 80, 20);
  plateColor2_redLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor2_redLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor2_redLB.setOpaque(false);
  plateColor2_greenLB = new GLabel(plateColor2, 320, 250, 80, 20);
  plateColor2_greenLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor2_greenLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor2_greenLB.setOpaque(false);
  plateColor2_blueLB = new GLabel(plateColor2, 320, 280, 80, 20);
  plateColor2_blueLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor2_blueLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor2_blueLB.setOpaque(false);
  label1111 = new GLabel(plateColor2, 274, 215, 40, 20);
  label1111.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1111.setText("Red");
  label1111.setTextBold();
  label1111.setLocalColorScheme(GCScheme.SCHEME_9);
  label1111.setOpaque(false);
  label9 = new GLabel(plateColor2, 275, 250, 40, 20);
  label9.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label9.setText("Green");
  label9.setLocalColorScheme(GCScheme.SCHEME_9);
  label9.setOpaque(false);
  label16 = new GLabel(plateColor2, 275, 282, 40, 20);
  label16.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label16.setText("Blue");
  label16.setLocalColorScheme(GCScheme.SCHEME_9);
  label16.setOpaque(false);
  label17 = new GLabel(plateColor2, 275, 312, 30, 20);
  label17.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label17.setText("Hex");
  label17.setLocalColorScheme(GCScheme.SCHEME_9);
  label17.setOpaque(false);
  plateColor2_hexLB = new GLabel(plateColor2, 320, 312, 80, 20);
  plateColor2_hexLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor2_hexLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor2_hexLB.setOpaque(false);
  label20 = new GLabel(plateColor2, 275, 341, 30, 20);
  label20.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label20.setText("#");
  label20.setLocalColorScheme(GCScheme.SCHEME_9);
  label20.setOpaque(false);
  textfield1 = new GTextField(plateColor2, 310, 342, 90, 30, G4P.SCROLLBARS_NONE);
  textfield1.setOpaque(true);
  textfield1.addEventHandler(this, "textfield1_change1");
  plateColor2_warningLB = new GLabel(plateColor2, 292, 377, 100, 20);
  plateColor2_warningLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor2_warningLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor2_warningLB.setOpaque(false);
  plateColor3 = GWindow.getWindow(this, "color3", 0, 0, 400, 420, JAVA2D);
  plateColor3.noLoop();
  plateColor3.addDrawHandler(this, "win_plateColor3_draw");
  plateColor3.addMouseHandler(this, "plateColor3_mouse");
  plateColor3_redLB = new GLabel(plateColor3, 320, 216, 80, 20);
  plateColor3_redLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor3_redLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor3_redLB.setOpaque(false);
  textfield2 = new GTextField(plateColor3, 306, 342, 90, 30, G4P.SCROLLBARS_NONE);
  textfield2.setOpaque(true);
  textfield2.addEventHandler(this, "textfield2_change1");
  plateColor3_greenLB = new GLabel(plateColor3, 320, 250, 80, 20);
  plateColor3_greenLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor3_greenLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor3_greenLB.setOpaque(false);
  plateColor3_blueLB = new GLabel(plateColor3, 320, 281, 80, 20);
  plateColor3_blueLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor3_blueLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor3_blueLB.setOpaque(false);
  plateColor3_hexLB = new GLabel(plateColor3, 320, 311, 80, 20);
  plateColor3_hexLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor3_hexLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor3_hexLB.setOpaque(false);
  label21 = new GLabel(plateColor3, 275, 215, 40, 20);
  label21.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label21.setText("Red");
  label21.setLocalColorScheme(GCScheme.SCHEME_9);
  label21.setOpaque(false);
  label22 = new GLabel(plateColor3, 275, 250, 40, 20);
  label22.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label22.setText("green");
  label22.setLocalColorScheme(GCScheme.SCHEME_9);
  label22.setOpaque(false);
  label23 = new GLabel(plateColor3, 275, 282, 40, 20);
  label23.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label23.setText("Blue");
  label23.setLocalColorScheme(GCScheme.SCHEME_9);
  label23.setOpaque(false);
  label24 = new GLabel(plateColor3, 275, 312, 40, 20);
  label24.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label24.setText("Hex");
  label24.setLocalColorScheme(GCScheme.SCHEME_9);
  label24.setOpaque(false);
  label25 = new GLabel(plateColor3, 272, 341, 30, 20);
  label25.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label25.setText("#");
  label25.setLocalColorScheme(GCScheme.SCHEME_9);
  label25.setOpaque(false);
  plateColor3_warningLB = new GLabel(plateColor3, 292, 377, 100, 20);
  plateColor3_warningLB.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  plateColor3_warningLB.setLocalColorScheme(GCScheme.SCHEME_9);
  plateColor3_warningLB.setOpaque(false);
  Plate = GWindow.getWindow(this, "Plate", 0, 0, 600, 600, JAVA2D);
  Plate.noLoop();
  Plate.addDrawHandler(this, "win_plate");
  Plate.addKeyHandler(this, "savePlate_key");
  test_win.loop();
  genPlate_win.loop();
  about_win.loop();
  numColor1.loop();
  numColor2.loop();
  numColor3.loop();
  plateColor1.loop();
  plateColor2.loop();
  plateColor3.loop();
  Plate.loop();
}

// Variable declarations 
// autogenerated do not edit
GButton btn_test; 
GButton genPlate_btn; 
GButton about_btn; 
GWindow test_win;
GButton next_btn; 
GButton restart_btn_test; 
GButton pre_btn; 
GWindow genPlate_win;
GButton Reset; 
GLabel Number; 
GLabel setNum; 
GLabel setcircle; 
GButton generate_plate; 
GDropList setNumber; 
GWindow about_win;
GLabel label1; 
GLabel label2; 
GLabel label3; 
GLabel label26; 
GWindow numColor1;
GLabel redColor1; 
GLabel greenColor1; 
GLabel blueColor1; 
GLabel numColor1_redLB; 
GLabel numColor1_greenLB; 
GLabel numColor1_blueLB; 
GLabel numColor1_hexLB; 
GLabel label4; 
GTextField numColor1_txt; 
GLabel label5; 
GLabel colorNum1_warningLB; 
GWindow numColor2;
GLabel numColor2_redLB; 
GLabel numColor2_greenLB; 
GLabel numColor2_blueLB; 
GLabel numColor2_hexLB; 
GLabel label10; 
GTextField numColor2_txt; 
GLabel numColor2_warningLB; 
GLabel label6; 
GLabel label12; 
GLabel asd; 
GLabel label13; 
GWindow numColor3;
GLabel numColor3_redLB; 
GLabel numColor3_greenLB; 
GLabel numColor3_blueLB; 
GLabel label11; 
GLabel label14; 
GLabel label15; 
GTextField numColor3_txt; 
GLabel numColor3_hexLB; 
GLabel numColor3_warningLB; 
GLabel label18; 
GLabel label19; 
GWindow plateColor1;
GLabel a; 
GLabel b; 
GLabel c; 
GLabel plateColor1_redLB; 
GLabel plateColor1_greenLB; 
GLabel plateColor1_blueLB; 
GLabel label7; 
GLabel plateColor1_hexLB; 
GLabel label8; 
GTextField plateColor1_txt; 
GLabel plateColor1_warningLB; 
GWindow plateColor2;
GLabel plateColor2_redLB; 
GLabel plateColor2_greenLB; 
GLabel plateColor2_blueLB; 
GLabel label1111; 
GLabel label9; 
GLabel label16; 
GLabel label17; 
GLabel plateColor2_hexLB; 
GLabel label20; 
GTextField textfield1; 
GLabel plateColor2_warningLB; 
GWindow plateColor3;
GLabel plateColor3_redLB; 
GTextField textfield2; 
GLabel plateColor3_greenLB; 
GLabel plateColor3_blueLB; 
GLabel plateColor3_hexLB; 
GLabel label21; 
GLabel label22; 
GLabel label23; 
GLabel label24; 
GLabel label25; 
GLabel plateColor3_warningLB; 
GWindow Plate;