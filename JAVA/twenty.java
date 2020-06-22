// C.J. Shen
// 7/8/19
// CSC 142 
// Assignment # 20 
// 45 minutes
//
// This program creates the method called inputBirthday that accepts a Scanner for the console as a parameter. 

// Importing io package and util for scanner class 
import java.io.*;
import java.util.*;

public class twenty {
    public static void main(String[] args) {
      
      // Scanner for the console.
      Scanner console = new Scanner (System.in);
      System.out.print("On what day of the month were you born? ");
      int day = console.nextInt();
    
      System.out.print("What is the name of the month in which you were born? ");
      String month = console.next();
      
      System.out.print("During what year were you born? ");
      int year = console.nextInt();
    
      System.out.println("You were born on " + month + " " + day + ", " + year + ". You're mighty old!");
   }
}

   
    






