/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package graduation_project;

/**
 *
 * @author Ali
 */
public class arr {
    
    
   public  float grade; int curr;  
   public String ssn;
       
      public void set(String ssn ,float g,int cur)
      {
          this.ssn=ssn;
          this.grade=g;
          this.curr =cur;
          System.out.println("the student is depted ");
      }
      
      public arr()
      {
          this.ssn="";  //System.out.println("the SSn Inationalized ");
          this.grade=-1;  //System.out.println("the grade Inationalized ");
          this.curr=0;   //System.out.println("the curre Inationalized ");
      }
      
    }
