// C.J. Shen
// 8/13/19
// CSC 142 
// Assignment # 20 
// 15 minutes
//
// This program makes comparisions between years and month. 

import java.util.*;

public class Twenty {
   public static void main(String[]args) {
      
      ArrayList<CalendarDate> dates = new ArrayList<CalendarDate>();
      CalendarDate date1 = new CalendarDate("July",18,1995);
      dates.add(date1);
      CalendarDate date2 = new CalendarDate("March",2,2001);
      dates.add(date2);
      
      // Make comparisios 
      if(date1.compareTo(date2) <1){
         System.out.println(date1);
      }else {
         System.out.println(date2);
      }
   }
}