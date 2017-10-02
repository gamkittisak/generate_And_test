
 class Boxs{
   
       private PApplet appc;
       private int x, y,w,h;
       private color c =#ffffff ;
       private boolean changed= false;
      Boxs(PApplet appc,int x,int y,int w,int h){
         this.appc = appc;
         this.x=x;
         this.y=y;
         this.w =w;
         this.h=h;
      }
      public Boxs create(){
        appc.fill(c);
        appc.rect(x,y,w,h);
        return this;
      }
      private void update(){
        appc.fill(c);
        appc.rect(x,y,w,h);
      }
      public int getX(){return x;}
      public int getY(){return y;}
      public int getHeight(){return h;}
      public int getWidth(){return w;}
      public color getColor(){return c;}
      public Boxs setX(int x){this.x=x; return this;}
      public Boxs setY(int y){this.y=y; return this;}
      public Boxs setWidth(int w){this.w=w; return this;}
      public Boxs setHeight(int h){this.h=h; return this;}
      public void setColor(color c){this.c = c; changed=true;}
      public boolean isChange(){return changed;}
      
 }