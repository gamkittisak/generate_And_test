
class ColorSliders<T>{
  public T getColorSlider(String titleClass,int colorMode,int positionX,int positionY,int sliderW,int sliderH){
    T t =null;
    if(titleClass.equalsIgnoreCase("HUE"))
        t = (T)new Hue(colorMode,positionX,positionY,sliderW,sliderH);
    if(titleClass.equalsIgnoreCase("saturation"))
        t = (T)new Saturation(colorMode,positionX,positionY,sliderW,sliderH);
    if(titleClass.equalsIgnoreCase("brightness"))
        t = (T)new BrightNess(colorMode,positionX,positionY,sliderW,sliderH);
    return t;
  }

  
}