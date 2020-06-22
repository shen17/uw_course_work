// C.J. Shen
// 7/30/19
// CSC 142 
// Assignment # 5 
// 20 minutes
//
// This accessor method returns the slope of the line drawn between this point and the given other Point. 

public class PointFive {
   private int x;
   private int y;
   
   // Accessor method using this. to called private x and returns the slope.  
   public double slope(PointFive p) {
      if (this.x == p.x) {
         throw new IllegalArgumentException();
      } else {
         double dy = (double)(this.y - p.y);
         double dx = (double)(this.x - p.x);
         return dy / dx;
      }
   }
}