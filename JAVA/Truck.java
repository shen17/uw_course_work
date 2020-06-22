// C.J. Shen
// 8/8/19
// CSC 142 
// Assignment # 4 
// 10 minutes
//
// This is the sub class truck derieved from super class car.

public class Truck extends Car {
   
   // Method m1 of sub class
   public void m1() {
      System.out.println("truck 1");
   }
   
   // Method m2 of sub class and calling the method m1 of super class  
   public void m2() {
      super.m1();
   }
   
   // toString method overriding the toString method of super class  
   public String toString() {
      return super.toString() + super.toString();
   }
}
