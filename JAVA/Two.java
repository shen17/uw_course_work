// C.J. Shen
// 8/12/19
// CSC 142 
// Assignment # 2 
// 20 minutes
//
// This program switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on.

import java.util.*;

public class Two {
   public static void main(String [] args) {
      
      // Create an arrayList 
      ArrayList<String> arrayList = new ArrayList<String>();
      
      // Adding elements to the arraylist
      arrayList.add("to");
      arrayList.add("be");
      arrayList.add("or");
      arrayList.add("not");
      arrayList.add("to");
      arrayList.add("be");
      arrayList.add("hamlet");
      System.out.println(arrayList);
      swapPairs(arrayList);
      System.out.println(arrayList);
   }
   
   // This method swap the adjacent elemnts in the array list
   public static void swapPairs(ArrayList<String> array) {
      for (int i = 0; i < array.size() / 2; i++) {
         String temp = array.get(2 * i + 1);
         array.set(2 * i + 1, array.get(2 * i));
         array.set(2 * i, temp);
      }
   }
}