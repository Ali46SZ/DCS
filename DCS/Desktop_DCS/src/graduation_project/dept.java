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
public class dept {
    
     public  int id;
     public    arr s[] ;
     public    int cur;
     
     
     
     public  dept(int ln)
     {
        //this.cur=0;
         s=new arr[ln];
        for(int w=0 ; w<s.length ;w++)
            s[w]=new arr();
     }
}

