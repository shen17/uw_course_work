// C.J. Shen
// 6/26/19
// CSC 142 
// Assignment # 12
// About 25 minutes.
//
// This program prints out a fightsong using static method.

public class FightSong {
   public static void main(String[]args) {
      go();
      System.out.println();
      go();
      best();
      go();
      System.out.println();
      go();
      best();
      go();
      System.out.println();
      go();
   }
   
   // This method prints out go team go.
   public static void go() {
      System.out.println("Go, team, go!");
      System.out.println("You can do it.");
   }
   
   // This method prints out the rest of the song. 
   public static void best() {
      System.out.println("You\'re the best,\nIn the West.");
   }
}
