
final class DrawNumber{
   private String num;
   private color[] col;
   private int positionX,positionY, visit =0;
   private final int loopMax =20;
   private float massball1=15,massball2=30;
   private PApplet appc;
   
  DrawNumber(PApplet appc,String num,color[] col,int positionX,int positionY){
      this.num = num;
      this.col = col;
      this.positionX = positionX;
      this.positionY = positionY;
      this.appc = appc;
  }
  
  /*
    DrawNumber(String num,int positionX,int positionY){
      this.num = num;
      this.positionX = positionX;
      this.positionY = positionY;
  }
  */
  void figureOut(){
    try{
      if(visit==0){
        appc.translate(positionX,positionY);  //move position x,y
        selectNumber();
        visit=1;
      }
    
    }catch(Exception e){
      javax.swing.JOptionPane.showMessageDialog(null,e.getMessage());
    }
    finally{
      appc.translate(positionX-positionX,positionY-positionY);
    }
  }
  
 private void selectNumber(){
     switch(num){
       case "0":
            zero();
            break;
       case "1":
              one();
             break;
             
         case "2":
             two();
             break;
             
         case "3":
             three();
             break;
         case "4":
             four();
             break;
         case "5":
             five();
             break;
         case "6":
             six();
             break;
         case "7":
             seven();
             break;
         case "8":
             eight();
             break;
         case "9":
             nine();
             break;
         default:javax.swing.JOptionPane.showMessageDialog(null,"No Have This Number");
     }
  }
  //#0
  
  private void zero(){
    float[][] range = new float[8][2];
    //x1
    range[0][0] = 0;
    range[0][1] = 250;
    //y1
    range[1][0] = 0;
    range[1][1] = 30;
    //x2
    range[2][0] = 0;
    range[2][1] = 30;
    //y2
    range[3][0] = 30;
    range[3][1] = 260;
    
    //x3
    range[4][0] = 220;
    range[4][1] = 250;
    //y3
    range[5][0] = 30;
    range[5][1] = 260;
    
    //x4
    range[6][0] = 0;
    range[6][1] = 250;
    //y4
    range[7][0] =260;
    range[7][1] =290;
    for(int i =0;i<loopMax;i++){
       float radians = getMassBall();
       float x1=random(range[0][0],range[0][1]);
       float y1=random(range[1][0],range[1][1]);
       appc.fill(getColor());
       appc.ellipse(x1,y1,radians,radians);
     }
    for(int i =0;i<loopMax;i++){
       float radians = getMassBall();
       float x2=random(range[2][0],range[2][1]);
       float y2=random(range[3][0],range[3][1]);
       appc.fill(getColor());
       appc.ellipse(x2,y2,radians,radians);
     }
     for(int i =0;i<loopMax;i++){
       float radians = getMassBall();
       float x3=random(range[4][0],range[4][1]);
       float y3=random(range[5][0],range[5][1]);
       appc.fill(getColor());
       appc.ellipse(x3,y3,radians,radians);
     }
     for(int i =0;i<loopMax;i++){
       float radians = getMassBall();
       float x4=random(range[6][0],range[6][1]);
       float y4=random(range[7][0],range[7][1]);
       appc.fill(getColor());
       appc.ellipse(x4,y4,radians,radians);
     }
  }
  
  //#1
  private void one(){
    float[][] range = new float[2][2];
    range[0][0] =0;
    range[0][1] = 30;
    range[1][0]=0;
    range[1][1]=260;
    int start =250/2 - (int)range[0][1]/2;
            for(int i=0;i<30;i++){
                float radians = getMassBall();
                float x = random(range[0][0],range[0][1]);
                float y = random(range[1][0],range[1][1]);
                appc.fill(getColor());
                appc.ellipse(positionX-start,y,radians,radians);
            }
            
  }
  
  //#2
  private void two(){
    float[][] range = new float[10][2];
    range[0][0]=0;
    range[0][1]=250;
    range[1][0]=0;
    range[1][1]=30;
    
    range[2][0]=220;
    range[2][1]=250;
    range[3][0]=30;
    range[3][1]=130;
    
    range[4][0]=0;
    range[4][1]=250;
    range[5][0]=130;
    range[5][1]=160;
    
    range[6][0]=0;
    range[6][1]=30;
    range[7][0]=160;
    range[7][1]=260;
    
    range[8][0]=0;
    range[8][1]=250;
    range[9][0]=260;
    range[9][1]=290;
    
     for(int i =0 ;i<20;i++){
       float radians = getMassBall();
       float x1 = random(range[0][0],range[0][1]);
       float y1 = random(range[1][0],range[1][1]);
       
       appc.fill(getColor());
       
       appc.ellipse(x1,y1,radians,radians);
     }
     for(int i =0;i<10;i++){
       float radians = getMassBall();
       float x2=random(range[2][0],range[2][1]);
       float y2=random(range[3][0],range[3][1]);
       appc.fill(getColor());
       appc.ellipse(x2,y2,radians,radians);
     }
     for(int i =0;i<20;i++){
       float radians = getMassBall();
       float x3 = random(range[4][0],range[4][1]);
       float y3 = random(range[5][0],range[5][1]);
       appc.fill(getColor());
       appc.ellipse(x3,y3,radians,radians);
     }
     for(int i=0;i<10;i++){
       float radians = getMassBall();
       float x4 = random(range[6][0],range[6][1]);
       float y4 = random(range[7][0],range[7][1]);
       appc.fill(getColor());
       appc.ellipse(x4,y4,radians,radians);
     }
     for(int i=0;i<20;i++){
       float radians = getMassBall();
       float x5 = random(range[8][0],range[8][1]);
       float y5 = random(range[9][0],range[9][1]);
       appc.fill(getColor());
       appc.ellipse(x5,y5,radians,radians);
     }
  }
  
  //3
  private void three(){
    float[][] range = new float[8][2];
    //X//
    range[0][0]=0;
    range[0][1]=220;
    //Y//
    range[1][0] =0;
    range[1][1]=30;
    range[2][0]=130;
    range[2][1]=160;
    range[3][0]=260;
    range[3][1]=290;
    //xy//vertical Bone
    range[4][0]=220;
    range[4][1]=250;
    range[5][0]=0;
    range[5][1]=290;
    for(int i=0;i<loopMax;i++){
      float radians = getMassBall();
      float x1 = random(range[0][0],range[0][1]);
      float y1 = random(range[1][0],range[1][1]);
      appc.fill(getColor());
      appc.ellipse(x1,y1,radians,radians);
    }
    for(int i=0;i<loopMax;i++){
      float radians = getMassBall();
      float x2 = random(range[0][0],range[0][1]);
      float y2 = random(range[2][0],range[2][1]);
      appc.fill(getColor());
      appc.ellipse(x2,y2,radians,radians);
  }
    for(int i=0;i<loopMax;i++){
      float radians = getMassBall();
      float x3 = random(range[0][0],range[0][1]);
      float y3 = random(range[3][0], range[3][1]);
      appc.fill(getColor());
      appc.ellipse(x3,y3,radians,radians);
    }
    for(int i=0;i<loopMax;i++){
       float radians = getMassBall();
       float x4 = random(range[4][0],range[4][1]);
       float y4 = random(range[5][0],range[5][1]);
       appc.fill(getColor());
       appc.ellipse(x4,y4,radians,radians);
    }
    
  }
  
  //#4
  private void four(){
    int[][] range = new int[6][2];
    
    //x1
    range[0][0] =0;
    range[0][1] = 30;
    //y1
    range[1][0]=0;
    range[1][1]=145;
    
   //x2
   range[2][0] = 30;
   range[2][1] = 170;
   //y2
   range[3][0] = 145;
   range[3][1] = 175;
   
   //x3
   range[4][0] = 170;
   range[4][1] = 200;
   //y3
   range[5][0] = 0;
   range[5][1] = 290;
   
   for(int i=0;i<loopMax;i++){
     float radians = getMassBall();
     float x1 = random(range[0][0],range[0][1]);
     float y1 = random(range[1][0],range[1][1]);
     appc.fill(getColor());
     appc.ellipse(x1,y1,radians,radians);
   }
   for(int i =0; i<loopMax;i++){
     float radians = getMassBall();
     float x2 = random(range[2][0],range[2][1]);
     float y2 = random(range[3][0],range[3][1]);
     appc.fill(getColor());
     appc.ellipse(x2,y2,radians,radians);
   }
   for(int i=0;i<loopMax;i++){
     float radians = getMassBall();
     float x3 =random(range[4][0],range[4][1]);
     float y3 = random(range[5][0],range[5][1]);
     appc.fill(getColor());
     appc.ellipse(x3,y3,radians,radians);
   }
  }
  
  //#5
  private void five(){
   final int reduceLoopMax = loopMax/2; 
  float[][] range = new float[10][2];
    range[0][0]=0;
    range[0][1]=250;
    range[1][0]=0;
    range[1][1]=30;
    
    range[2][0]=0;
    range[2][1]=30;
    range[3][0]=30;
    range[3][1]=130;
    
    range[4][0]=0;
    range[4][1]=250;
    range[5][0]=130;
    range[5][1]=160;
    
    range[6][0]=220;
    range[6][1]=250;
    range[7][0]=160;
    range[7][1]=260;
    
    range[8][0]=0;
    range[8][1]=250;
    range[9][0]=260;
    range[9][1]=290;
    for(int i =0 ;i<loopMax;i++){
       float radians = getMassBall();
       float x1 = random(range[0][0],range[0][1]);
       float y1 = random(range[1][0],range[1][1]);
       
       appc.fill(getColor());
       
       appc.ellipse(x1,y1,radians,radians);
     }
     for(int i =0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x2=random(range[2][0],range[2][1]);
       float y2=random(range[3][0],range[3][1]);
       appc.fill(getColor());
       appc.ellipse(x2,y2,radians,radians);
     }
     for(int i =0;i<loopMax;i++){
       float radians = getMassBall();
       float x3 = random(range[4][0],range[4][1]);
       float y3 = random(range[5][0],range[5][1]);
       appc.fill(getColor());
       appc.ellipse(x3,y3,radians,radians);
     }
     for(int i=0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x4 = random(range[6][0],range[6][1]);
       float y4 = random(range[7][0],range[7][1]);
       appc.fill(getColor());
       appc.ellipse(x4,y4,radians,radians);
     }
     for(int i=0;i<loopMax;i++){
       float radians = getMassBall();
       float x5 = random(range[8][0],range[8][1]);
       float y5 = random(range[9][0],range[9][1]);
       appc.fill(getColor());
       appc.ellipse(x5,y5,radians,radians);
     }
  }
  
  //#6
  private void six(){
    final int reduceLoopMax = loopMax/2; 
  float[][] range = new float[12][2];
  
  //x1,y1
    range[0][0]=0;
    range[0][1]=250;
    range[1][0]=0;
    range[1][1]=30;
   //x2,y2
    range[2][0]=0;
    range[2][1]=30;
    range[3][0]=30;
    range[3][1]=130;
   //x3,y3
    range[4][0]=0;
    range[4][1]=250;
    range[5][0]=130;
    range[5][1]=160;
   //x4,y4
    range[6][0]=220;
    range[6][1]=250;
    range[7][0]=160;
    range[7][1]=260;
   //x5y5
   range[10][0] =0;
   range[10][1] =30;
   range[11][0]=160;
   range[11][1]=260;
    
   //x6,y6 
    range[8][0]=0;
    range[8][1]=250;
    range[9][0]=260;
    range[9][1]=290;
    for(int i =0 ;i<loopMax;i++){
       float radians = getMassBall();
       float x1 = random(range[0][0],range[0][1]);
       float y1 = random(range[1][0],range[1][1]);
       
       appc.fill(getColor());
       
       appc.ellipse(x1,y1,radians,radians);
     }
     for(int i =0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x2=random(range[2][0],range[2][1]);
       float y2=random(range[3][0],range[3][1]);
       appc.fill(getColor());
       appc.ellipse(x2,y2,radians,radians);
     }
     for(int i =0;i<loopMax;i++){
       float radians = getMassBall();
       float x3 = random(range[4][0],range[4][1]);
       float y3 = random(range[5][0],range[5][1]);
       appc.fill(getColor());
       appc.ellipse(x3,y3,radians,radians);
     }
     for(int i=0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x4 = random(range[6][0],range[6][1]);
       float y4 = random(range[7][0],range[7][1]);
       appc.fill(getColor());
       appc.ellipse(x4,y4,radians,radians);
     }
     
     for(int i=0;i<loopMax;i++){
       float radians = getMassBall();
       float x5 = random(range[8][0],range[8][1]);
       float y5 = random(range[9][0],range[9][1]);
       appc.fill(getColor());
       appc.ellipse(x5,y5,radians,radians);
     }
     
     for(int i=0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x6 = random(range[10][0],range[10][1]);
       float y6 = random(range[11][0],range[11][1]);
       appc.fill(getColor());
       appc.ellipse(x6,y6,radians,radians);
     }
  }
  
  //#7
  private void seven(){
    final int reduceLoopMax = loopMax/2; 
    float[][] range = new float[6][2];
    range[0][0] = 0;
    range[0][1] = 180;
    range[1][0] = 0;
    range[1][1] = 30;
    
    range[2][0] =180;
    range[2][1] =210;
    range[3][0] =30;
    range[3][1] = 290;
    
    range[4][0] = 0;
    range[4][1] = 30;
    range[5][0] = 30;
    range[5][1] = 90;
     setMassBall(10,30);
     for(int i=0;i<loopMax-reduceLoopMax-5;i++){
        float radians = getMassBall();
        float x3 = random(range[4][0],range[4][1]);
        float y3 =random(range[5][0],range[5][1]);
        appc.fill(getColor());
        appc.ellipse(x3,y3,radians,radians);
    }
     setMassBall(10,40);  
    for(int i =0;i<loopMax;i++){
        float radians = getMassBall();
        float x1 = random(range[0][0],range[0][1]);
        float y1 = random(range[1][0],range[1][1]);
        appc.fill(getColor());
        appc.ellipse(x1,y1,radians,radians);
    }

    for(int i=0;i<loopMax+5;i++){
        float radians = getMassBall();
        float x2 = random(range[2][0],range[2][1]);
        float y2 =random(range[3][0],range[3][1]);
        appc.fill(getColor());
        appc.ellipse(x2,y2,radians,radians);
    }
   
  }
  //#8
  private void eight(){
     final int reduceLoopMax = loopMax/2; 
  float[][] range = new float[14][2];
  
  //x1,y1
    range[0][0]=0;
    range[0][1]=250;
    range[1][0]=0;
    range[1][1]=30;
   //x2,y2
    range[2][0]=0;
    range[2][1]=30;
    range[3][0]=30;
    range[3][1]=130;
    //x3,y3
    range[12][0]=220;
    range[12][1]=250;
    range[13][0]=30;
    range[13][1]=130;
   //x4,y4
    range[4][0]=0;
    range[4][1]=250;
    range[5][0]=130;
    range[5][1]=160;
   //x5,y5
    range[6][0]=220;
    range[6][1]=250;
    range[7][0]=160;
    range[7][1]=260;
   //x6y6
   range[10][0] =0;
   range[10][1] =30;
   range[11][0]=160;
   range[11][1]=260;
    
   //x7,y7 
    range[8][0]=0;
    range[8][1]=250;
    range[9][0]=260;
    range[9][1]=290;
    for(int i =0 ;i<loopMax;i++){
       float radians = getMassBall();
       float x1 = random(range[0][0],range[0][1]);
       float y1 = random(range[1][0],range[1][1]);
       
       appc.fill(getColor());
       
       appc.ellipse(x1,y1,radians,radians);
     }
     for(int i =0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x2=random(range[2][0],range[2][1]);
       float y2=random(range[3][0],range[3][1]);
       appc.fill(getColor());
       appc.ellipse(x2,y2,radians,radians);
     }
     for(int i =0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x2=random(range[12][0],range[12][1]);
       float y2=random(range[13][0],range[13][1]);
       appc.fill(getColor());
       appc.ellipse(x2,y2,radians,radians);
     }
     for(int i =0;i<loopMax;i++){
       float radians = getMassBall();
       float x3 = random(range[4][0],range[4][1]);
       float y3 = random(range[5][0],range[5][1]);
       appc.fill(getColor());
       appc.ellipse(x3,y3,radians,radians);
     }
     for(int i=0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x4 = random(range[6][0],range[6][1]);
       float y4 = random(range[7][0],range[7][1]);
       appc.fill(getColor());
       appc.ellipse(x4,y4,radians,radians);
     }
     
     for(int i=0;i<loopMax;i++){
       float radians = getMassBall();
       float x5 = random(range[8][0],range[8][1]);
       float y5 = random(range[9][0],range[9][1]);
       appc.fill(getColor());
       appc.ellipse(x5,y5,radians,radians);
     }
     
     for(int i=0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x6 = random(range[10][0],range[10][1]);
       float y6 = random(range[11][0],range[11][1]);
       appc.fill(getColor());
       appc.ellipse(x6,y6,radians,radians);
     }
  }
  
  //#9
  private void nine(){
 final int reduceLoopMax = loopMax/2; 
  float[][] range = new float[14][2];
  
  //x1,y1
    range[0][0]=0;
    range[0][1]=250;
    range[1][0]=0;
    range[1][1]=30;
   //x2,y2
    range[2][0]=0;
    range[2][1]=30;
    range[3][0]=30;
    range[3][1]=130;
    //x3,y3
    range[12][0]=220;
    range[12][1]=250;
    range[13][0]=30;
    range[13][1]=130;
   //x4,y4
    range[4][0]=0;
    range[4][1]=250;
    range[5][0]=130;
    range[5][1]=160;
   //x5,y5
    range[6][0]=220;
    range[6][1]=250;
    range[7][0]=160;
    range[7][1]=260;
    
   //x7,y7 
    range[8][0]=0;
    range[8][1]=250;
    range[9][0]=260;
    range[9][1]=290;
    for(int i =0 ;i<loopMax;i++){
       float radians = getMassBall();
       float x1 = random(range[0][0],range[0][1]);
       float y1 = random(range[1][0],range[1][1]);
       
       appc.fill(getColor());
       
       appc.ellipse(x1,y1,radians,radians);
     }
     for(int i =0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x2=random(range[2][0],range[2][1]);
       float y2=random(range[3][0],range[3][1]);
       appc.fill(getColor());
       appc.ellipse(x2,y2,radians,radians);
     }
     for(int i =0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x2=random(range[12][0],range[12][1]);
       float y2=random(range[13][0],range[13][1]);
       appc.fill(getColor());
       appc.ellipse(x2,y2,radians,radians);
     }
     for(int i =0;i<loopMax;i++){
       float radians = getMassBall();
       float x3 = random(range[4][0],range[4][1]);
       float y3 = random(range[5][0],range[5][1]);
       appc.fill(getColor());
       appc.ellipse(x3,y3,radians,radians);
     }
     for(int i=0;i<loopMax-reduceLoopMax;i++){
       float radians = getMassBall();
       float x4 = random(range[6][0],range[6][1]);
       float y4 = random(range[7][0],range[7][1]);
       appc.fill(getColor());
       appc.ellipse(x4,y4,radians,radians);
     }
     
     for(int i=0;i<loopMax;i++){
       float radians = getMassBall();
       float x5 = random(range[8][0],range[8][1]);
       float y5 = random(range[9][0],range[9][1]);
       appc.fill(getColor());
       appc.ellipse(x5,y5,radians,radians);
     }
     
  }
  
  public void setMassBall(float massball1,float massball2){
    this.massball1 =massball1;
    this.massball2 = massball2;
  }
  public float getMassBall(){
    return random(massball1,massball2);
  }
  
  public String getValueRandomOfMassBall(){
    return massball1 +" "+massball2;
  }
  
  private int getColor(){
       int indexRandom = (int)random(0,col.length);
       return col[indexRandom];
  }
   
  public float getWidth(){
    return 250.0;
  }
  public float getHeight(){
    return 290.0;
  }
}