// C.J. Shen
// 8/8/19
// CSC 142 
// Assignment # 15 
// 35 minutes
//
// This is a class represent regular octagon.

import java.math.*;

public class Octagon implements Shape{
   
   // Declare variable 
   double side; 
   
   // Constructor 
   public Octagon(double side) {
      this.side = side;
   }
   
   // Returns area
   public double getArea() {
      return (side*side)*(2.0+2*Math.sqrt(2.0));
   }
   
   // Returns perimeter 
   public double getPerimeter() {
      return 8*side;
   }
}