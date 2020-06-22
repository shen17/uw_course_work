// C.J. Shen
// 7/30/19
// CSC 142 
// Assignment # 22
// 55 minutes
//
// The method return a new rectangle that represents the largest rectangular region completely contained within both this rectangle and the given other rectangle.

public class Rectangle22 {
   private int x;
   private int y;
   private int width;
   private int height;
   
   // Constructor 
   public Rectangle22(int x, int y, int width, int height) {
      this.x = x;
      this.y = y;
      if (height < 0 || width < 0) {
         throw new IllegalArgumentException();
      } else {
         this.width = width;
         this.height = height;
      }
   } 
   
   // Constructor
   public Rectangle22(Point p, int width, int height) {
      x = p.x;
      y = p.y;
      this.width = width;
      this.height = height;
   }
   
   // This method return whether the given cordinates lie inside the bounds of this rectangle.
   public boolean contains(int x, int y) {
      return (x <= this.x + width && x >= this.x) && (y <= this.y + height && y >= this.y);
   }

   // This method return whether the given point lie inside the bounds of this rectangle.
   public boolean contains(Point p) {
      return (p.getX() <= this.x + width && p.getX() >= this.x) && (p.getY() <= this.y + height && p.getY() >= this.y);
   }
   
   // Return width
   public int getWidth () {
      return width;
   }
   
   // Return height
   public int getHeight () {
      return height;
   }
   
   // Return x cordinate
   public int getY () {
      return y;
   }
   
   // Return y cordinate
   public int getX () {
      return x;
   }
   
   // This method return a new rectangle that represents the largest rectangular region completely contained within both this rectangle and the given other rectangle
   public Rectangle intersection(Rectangle rect, int left, int top, int width, int height) {
      int left = Math.max(this.x, rect.x);
      int top = Math.max(this.y, rect.y);
      int right = Math.min(this.x + this.width, rect.x + rect.width);
      int bottom = Math.min(this.y + this.height, rect.y + rect.height);
      int width = Math.max(0, right - left);
      int height = Math.max(0, bottom - top);
        
      return new Rectangle(left, top, width, height);
   }
}