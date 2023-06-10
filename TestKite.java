public class TestKite{
   public static void main(String []args) throws CloneNotSupportedException{
      //default
      Kite kt1 = new Kite();
      Kite kt2 = new Kite(4.0, 5.0, 12.0, 10.0);//valued
      Kite kt3 = new Kite();
      Kite kt4 = (Kite)kt1.clone();
      
      System.out.println("Kite 1 "+kt1);
      System.out.println("\nKite 2 "+kt2);
      System.out.println("\nKite 3 "+kt3);
      System.out.println("\nKite 4 "+kt4);
      
      System.out.println("\nKite 1 and Kite 2: "+kt1.equals(kt2));
      System.out.println("Kite 2 and Kite 3: "+kt2.equals(kt3));
      System.out.println("Kite 1 and Kite 3: "+kt1.equals(kt3));
      System.out.println("Kite 1 and Kite 4: "+kt1.equals(kt4)); 
   }
}