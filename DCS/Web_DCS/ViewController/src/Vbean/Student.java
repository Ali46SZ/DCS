package Vbean;

import java.sql.ResultSet;

public class Student {
    
    public static String name ;
    public static int set_no ; 
    public static int  state ; 
    public static int state_qid;
    public static int disable ;
    public static int son ;
    public static int relgion ;
    public static int qualify ;
    public static int nationality ;
    public static void info () {
        String sql ="SELECT * FROM `student` where ssn like '"+Dbase.ssn+"'"; 
               ResultSet rs =Dbase.executeSelect(sql);
               try{
               if(rs.next())
               {
               name=rs.getString("name");   
               set_no=rs.getInt("set_no");
               state=rs.getInt("state");
               state_qid=rs.getInt("stateRestriction");
               relgion=rs.getInt("relig_id");
               qualify=rs.getInt("qualification");
               nationality=rs.getInt("nationality");
               }
               
               }catch(Exception e) {
                   System.out.println(e.getMessage());
               }
               
    }
    public static String  f_religion() {
        if(relgion==1)
            return "مسلم";
        else
            return "مسيحي";
    }
    public static String f_qualification() {
        if(qualify==0)
            return "علمي علوم";
        else if (qualify==1)
            return "علمي رياضة";
        else if(qualify==2)
            return "ادبي"; 
        else
            return "مؤهلات";
    }
    public static String  f_state() {
        if(state==0)
            return "انتظام";
        else 
            return "انتساب";
    }
    public static String  f_nationality() {
        if(nationality==1)
            return "مصري";
        else 
            return "اجنبي";
    }
    
}
