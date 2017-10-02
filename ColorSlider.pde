public abstract class ColorSlider implements ServiecSlider{
  protected int positionX,
      positionY,
      sliderWidth,
      sliderHeight,
      colorMode,
      red,
      green,
      blue;
 protected float hue =255,
        brightness =255,
        saturation=255,
        targetSlider,
        offset;
 protected float color_;
  
public abstract void createColor();
public abstract void init();
public abstract void updateSlider();
public abstract void setPositionSlider(float v);
public void setWidth(int w){this.sliderWidth=w;}
public void setHeight(int h){this.sliderHeight=h;}
public void setPositionX(int x){this.positionX=x;}
public void setPositionY(int y){this.positionY=y;}
public void setRed(int red){this.red = red;}
public void setGreen(int green){this.green = green;}
public void setBlue(int blue){this.blue = blue;}
public void setColor(float color_){this.color_ =color_;}
public void setColor(int red,int green,int blue){this.red =red;this.green=green;this.blue=blue;}
public void setBrightness(float brightness){this.brightness =brightness;}
public void setHue(float hue){this.hue=hue;}
public void setSaturation(float saturation){this.saturation = saturation;}
public int getWidth(){return sliderWidth;}
public int getHeight(){return sliderHeight;}
public int getPositionX(){return positionX;}
public int getPositionY(){return positionY;}
public int getRed(){return red;}
public int getGreen(){return green;}
public int getBlue(){return blue;}
public float getColor(){return map(color_,0,sliderWidth,0,255);}
public float getHue(){return hue;}
public float getBrightness(){return brightness;}
public float getSaturation(){return saturation;}
}