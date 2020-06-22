// C.J. Shen
// 8/7/19
// CSC 142 
// Assignment # 2 
// 25 minutes
//
// This class Janitor interact with the superclass.

public class Janitor extends Employee {
    
    // Override the method getHours of super class Employee
    public int getHours() {
        return super.getHours() * 2;
    }
    
    // Override the method getSalary of super class Employee
    public double getSalary() {
        return super.getSalary() - 10000;
    }
    
    // Override the method getVacationDays of super class Employee
    public int getVacationDays() {
        return super.getVacationDays() / 2;
    }
    
    // New method added to janitor class
    public void clean() {
        System.out.println("Workin' for the man.");
    }
}