// C.J. Shen
// 7/30/19
// CSC 142 
// Assignment # 9 
// 25 minutes
//
// This mutator method scales the time span by the given factor. 

public class TimeSpan {
   private int hours;
   private int minutes;
   
   // Set hours and minutes of timespan's point. 
   public void add(int hours, int minutes) {  
      this.hours += hours;
      this.minutes += minutes;
   }
   
   // Return a string  
   public String toString() { 
      return hours + "h " + minutes + " m";   
   }
   
   // Convert 60 minutes to one hour and scales the time span by the given factor
   public void scale(int factor) {
      this.hours = this.minutes * factor / 60 + factor * this.hours;
      this.minutes = this.minutes * factor % 60;
    }    
}