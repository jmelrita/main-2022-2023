import java.text.DecimalFormat;
public class Kite implements Cloneable{
   double dp;
   double dq;
   double la;
   double lb;

   public Kite(){
      dp = 1.0;
      dq = 1.0;
      la = 1.0;
      lb = 1.0;
   }
   public Kite(double dp, double dq, double la, double lb)
   {      
      this.dp = dp;
      this.dq = dq;
      this.la = la;
      this.lb = lb;
      
   }
   //getters and setters//
   
   //-diagonalP
   public double getDp(){
      return dp;
   }
      public void setDp(double p){
      dp = p;
   }
   
   //-diagonalQ
   public double getDq(){
      return dq;
   }
   public void setDq(double dq){
      this.dq = dq;
   }
   //-lengthA
   public double getLa(){
      return la;
   }
   public void setLa(double la){
      this.la = la;
   }
   //-lengthB
   public double getLb(){
      return lb;
   }
   public void setLb(double lb){
      this.lb = lb;
   }
   //+findPerimeter()
   public double findPerimeter(){
      return 2*(la+lb);
   }
   //+findArea()
   public double findArea(){
      return dp*dq/2;
   }
   //+toString()
   public String toString(){
      DecimalFormat df = new DecimalFormat("##0.0#");
      return "\nDiagonal P : "+dp
            +"\nDiagonal Q : "+dq
            +"\nLength A   : "+la
            +"\nLength B   : "+lb
            +"\nArea       : "+df.format(findArea())
            +"\nPerimeter  : "+df.format(findPerimeter());
   }
   //+equals()   
   public boolean equals(Kite k){
      return this.dp==k.dp && this.dq==k.dq && this.la==k.la && this.lb==k.lb;  
   }
   //+clone()
   public Object clone() throws CloneNotSupportedException{
      return super.clone();      
   }
}