class DataWinTest extends GWinData{

  private final color[] normalSeeNumber ={#ffffff,#ffffff,#ffffff};
  private final color[] normalSeeCircles ={#000000,#000000,#000000};
  
  private final color[] deuteranopiaSeeNumber ={#4bb9d3,#73d5f3,#a9e1f2};
  private final color[] deuteranopiaSeeCircles ={#be8acb,#e1adf2,#e6d1e9};
  private final color[] deuteranopiaSeeNumber2 ={#c1d884,#919e5a,#afc57a};
  private final color[] deuteranopiaSeeCircles2 ={#bc7f57,#e4c792,#cdb169};
  private final color[] deuteranopiaSeeNumber3 ={#f47f7c,#d84242,#fa8d88};
  private final color[] deuteranopiaSeeCircles3 ={#b4bf7e,#7a7734,#b5b088};
  
  private final color[] protanopiaSeeNumber ={#4bb9d3,#51bbd8,#6ff3fa};
  private final color[] protanopiaSeeCircles ={#a58ab8,#d5aed8,#f3e7fa};
  private final color[] protanopiaSeeNumber2 ={#c1d884,#c3d57a,#dcf89a};
  private final color[] protanopiaSeeCircles2 ={#ca7943,#e4c07d,#f8eb96};
  private final color[] protanopiaSeeNumber3 ={#71b95d,#6cd541,#8fe16d};
  private final color[] protanopiaSeeCircles3 ={#bfb926,#e4d46a,#bbb162};
  
  private final color[] tritanopiaSeeNumber={#46c351,#26a342,#4bc96a};
  private final color[] tritanopiaSeeCircles={#61bebc,#368f9b,#6fbebb};
  private final color[] tritanopiaSeeNumber2 ={#d196ec,#c189db,#e7a3fa};
  private final color[] tritanopiaSeeCircles2={#d2acb3,#b8979d,#e0b8a5};  
  
  private ArrayList<color[]> deuteranopiaNumber = new ArrayList<color[]>();
  private ArrayList<color[]> deuteranopiaCircles = new ArrayList<color[]>();
  private ArrayList<color[]> protanopiaNumber = new ArrayList<color[]>();
  private ArrayList<color[]> protanopiaCircles  = new ArrayList<color[]>();
  private ArrayList<color[]> tritanopiaNumber = new ArrayList<color[]>();
  private ArrayList<color[]> tritanopiaCircles = new ArrayList<color[]>();
  DataWinTest(){
    deuteranopiaNumber.add(deuteranopiaSeeNumber);
    deuteranopiaNumber.add(deuteranopiaSeeNumber2);
    deuteranopiaNumber.add(deuteranopiaSeeNumber3);
    deuteranopiaCircles.add(deuteranopiaSeeCircles);
    deuteranopiaCircles.add(deuteranopiaSeeCircles2);
    deuteranopiaCircles.add(deuteranopiaSeeCircles3);
    
    protanopiaNumber.add(protanopiaSeeNumber);
    protanopiaNumber.add(protanopiaSeeNumber2);
    protanopiaNumber.add(protanopiaSeeNumber3);
    protanopiaCircles.add(protanopiaSeeCircles);
    protanopiaCircles.add(protanopiaSeeCircles2);
    protanopiaCircles.add(protanopiaSeeCircles3);
    
    tritanopiaNumber.add(tritanopiaSeeNumber);
    tritanopiaCircles.add(tritanopiaSeeCircles);
    tritanopiaNumber.add(tritanopiaSeeNumber2);
    tritanopiaCircles.add(tritanopiaSeeCircles2);
  }
  public  final String zero ="0";
  public  final String one ="1";
  public  final String two ="2";
  public  final String three ="3";
  public  final String four ="4";
  public  final String five ="5";
  public  final String six = "6";
  public  final String seven ="7";
  public  final String eight ="8";
  public  final String nine ="9";
  
  public final int stateIndexOfDeu =3;
  public final int stateIndexOfPro = 3;
  public final int stateIndexOfTri =2;
  
  public color[] getNormalSeeNumber(){return normalSeeNumber;}
  public color[] getNormalSeeCircles(){return normalSeeCircles;}
  public color[] getDeuteranopiaSeeNumber(){return deuteranopiaSeeNumber;}
  public color[] getDeuteranopiaSeeCircles(){return deuteranopiaSeeCircles;}
  public color[] getProtanopiaSeeNumber(){return protanopiaSeeNumber;}
  public color[] getProtanopiaSeeCircles(){return protanopiaSeeCircles;}
  public color[] getTritanopiaSeeNumber(){return tritanopiaSeeNumber;}
  public color[] getTritanopiaSeeCircles(){return tritanopiaSeeCircles;}

  public color[] getColorCircles(String typeOfColorBlindNess,int colorIndex){
    color[] res={#ffffff,#ffffff,#ffffff};
    if(typeOfColorBlindNess.equalsIgnoreCase("deuteranopia"))
       res = deuteranopiaCircles.get(colorIndex);
    if(typeOfColorBlindNess.equalsIgnoreCase("protanopia"))
      res =  protanopiaCircles.get(colorIndex);
    if(typeOfColorBlindNess.equalsIgnoreCase("tritanopia"))
      res = tritanopiaCircles.get(colorIndex);
    return res;
  }
  
  public color[] getColorNumber(String typeOfColorBlindNess, int colorIndex){
    color[] res={#ffffff,#ffffff,#ffffff};
    if(typeOfColorBlindNess.equalsIgnoreCase("deuteranopia"))
      res = deuteranopiaNumber.get(colorIndex);
    if(typeOfColorBlindNess.equalsIgnoreCase("protanopia"))
      res = protanopiaNumber.get(colorIndex);
    if(typeOfColorBlindNess.equalsIgnoreCase("tritanopia"))
      res = protanopiaNumber.get(colorIndex);
    return res;
  }
  public final color bgColor_Plate = #ffffff;
}