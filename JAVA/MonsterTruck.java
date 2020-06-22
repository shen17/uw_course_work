// C.J. Shen
// 8/8/19
// CSC 142 
// Assignment # 4 
// 20 minutes
//
// This is a sub class MonsterTruck derieved from super class Car.

public class MonsterTruck extends Truck {
   
   // Method m1 of sub class 
   public void m1() {
      System.out.println("monster 1");
   }
   
   // Method m2 of sub class calling methods m1 and m2 of super class.  
   public void m2() {
      super.m1();
      super.m2();
   }
   
   // toString method overriding the toString method of car class and concatenated with String monster.  
   public String toString() {
      return "monster " + super.toString();
   }
}