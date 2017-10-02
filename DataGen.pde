class DataGen extends GWinData{
       public Hue hue;
       public Saturation saturation;
       public BrightNess brightness;
       public PApplet appc;
       public MouseEvent mouseEvent;
       public boolean focus = false;
       public int rectPosX = 125,rectPosY = 200, rectR = 150;
       public int red = 123,green = 50,blue =123;
       public final color backgroundColor = #1a1a1c;
       public boolean switchColorDefault = false;
       private color c;
       
       public color getColor(){
           return color(hue.getColor(),saturation.getColor(),brightness.getColor());
       }
       public void setColor(color c){this.c = c;}
       public color getBackground(){
          return color(red,green,blue);       
       }
       public DataGen setInstanceHue(Hue hue){
         this.hue =hue;
         return this;
       }
       public DataGen setInstanceSaturation(Saturation saturation){
         this.saturation = saturation;
         return this;
       }
       public DataGen setInstanceBrightNess(BrightNess brightness){
         this.brightness = brightness;
         return this;
       }
       public DataGen setPApplet(PApplet appc){
         this.appc=appc;
         hue.setPApplet(appc);
         saturation.setPApplet(appc);
         brightness.setPApplet(appc);
         return this;
     }
       public void setMouseEvent(MouseEvent mouseEvent){
         this.mouseEvent = mouseEvent;
         hue.setMouseEvent(mouseEvent);
         saturation.setMouseEvent(mouseEvent);
         brightness.setMouseEvent(mouseEvent);
     }
       public PApplet getPApplet(){return appc;}
       public MouseEvent getMouseEvent(){return mouseEvent;}
 }