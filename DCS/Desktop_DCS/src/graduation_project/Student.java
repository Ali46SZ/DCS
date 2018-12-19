package graduation_project;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ali
 */
public class Student {
    
    public String ssn ;
    public int  qualify,religion,state,son,disable;   
    public int   desire [] =new int  [14];
    public int cur_desire;
    public  float ar,en,fr,hi,goegraphy,psycholgy,phelosophy,ch,ph,math11,math22,geologya,statistic,EDpatriotism1,biology1,totall;
    
    public Student()
    {
        for (int i=0;i<this.desire.length;i++)
        {
            desire[i]=-1;
        }
    }
    
    public float dept_d_grade(int i)
    {
        if(i==0)
        {
            return en ;
        }
        else if(i==1)
        {
           return fr;
           
        }else if(i==2)
        {
            return ar ;
        }else if(i==3)
        {
        }
        else if(i==4)
        {
            
        }else if(i==4)
        {
        
        }else if(i==5)
        {
            
        }else if(i==6)
        {
        }else if(i==7)
        {
            
        }else if(i==8)
        {
        }
        else if(i==9)
        {
        }else if(i==10)
        {
            
        }
        else if(i==11)
        {
            
        }
        else if(i==12)
        {
            
        }else if(i==13)
        {
        }
        else
            
        return 0 ;
        return 0;
    
    }
    
}
