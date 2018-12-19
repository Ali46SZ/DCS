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
public class st {

    public String ssn;
    public int qualify;
    public int son;
    public int disable;
    public float ar, en, fr, hi, goegraphy, psycholgy, phelosophy, ch, ph, math11, math22, geologya, statistic, EDpatriotism1, biology1, totall;

    public int desire[] = new int[14];
    public int cur = 0;
    public int dd;

    public st() {
    
        for (int i=0;i<this.desire.length;i++)
        {
            desire[i]=-1;
        }
   
    }

    public void show() {
        System.out.println(" ssn :" + ssn);
        System.out.println(" English :" + en);
        System.out.println("Arabic : " + ar);
        System.out.println(" Frace  :" + fr);
        for (int o = 0; o < desire.length; o++) {
            System.out.println("desire " + o + " : " + this.desire[o]);
        }

    }

    public void set() {

    }

    public float grade(int i) {
        String[] desir = {"الفة الاجنبية الاولى", "االلغة الفرنسية ", " التاريخ ", "الجغرافيا ", "الفلسفة", "علم النفس", "الاجتماع ", "الدراسات السكانية ", "علوم المسرح", "اللغة العربية ", "الدراسات الاسلامية ", "الاثار", "المكتبات", "الاعلام"};

        if (i == 0) {
            return en;
        } else if (i == 1) {
            return fr;
        } else if (i == 2) {
            if (hi == -1) {
                return geologya;
            } else {
                return hi;
            }
        } else if (i == 3) {
            if (goegraphy == -1) {
                return geologya;
            } else {
                return goegraphy;
            }
        } else if (i == 4) {
            if (phelosophy == -1) {
                return psycholgy;
            } else {
                return phelosophy;
            }
        } else if (i == 5) {
            if (psycholgy == -1) {
                return statistic;
            } else {
                return psycholgy;
            }
        } else if (i == 6) {
            if (psycholgy == -1) {
                return statistic;
            } else {
                return psycholgy;
            }
        } else if (i == 7) 
        {
            if(psycholgy==-1)
                    return statistic;
                else 
                    
                return psycholgy;
        } 
        
        else if (i == 8) 
        {
          
            return totall;
            
        } 
        
        else if (i == 9) 
        {
            return ar;
        }
        
        else if (i == 10) 
        {
         return hi;
        }
        else if (i == 11) 
        {
            if(hi==-1)
                return (ar+en+fr)/3;
            else
            return hi;
        } 
        
        else if (i == 12) 
        {
           return (ar+en+fr)/3;
        } 
        else if (i == 13) 
        {
            return (ar+en+fr)/3;
        }      
        return 0;

    }
}
