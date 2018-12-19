

package graduation_project;
//import com.mysql.jdbc.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTextArea;

public class Dbase {
    
    
 private static final String user ="root";
 private static final String pass ="";
 private static final String url="jdbc:mysql://localhost/finalproject";
 static  ResultSet re;
 public static Scanner s=new Scanner(System.in);
 static PreparedStatement st=null;
 public static String username  ;
 public  static int type;
  
 
 public static Connection  getConnection()  throws SQLException
 {
     String unicode= "?useUnicode=yes&characterEncoding=UTF-8";
   
         Connection con =(Connection) DriverManager.getConnection(url+unicode, user, pass);
          
         return con ;
 }    
    
public static void op(String n)
{
    new JOptionPane().showMessageDialog(null,n);
    
}   
    
    public static ResultSet info(String g )
    {
        try{
      String ss2 = "select * from product where name = '"+g+"'";
      
       st = getConnection().prepareStatement(ss2);
       re= st.executeQuery(ss2);
         
           return re; 
        
            }catch(Exception e)
            {
                Dbase.op(e.getMessage());
                return null;
            }
     
    }
    public static void fillcompo(JComboBox com,String sss)
    {
        try{
             //String sss ="SELECT name FROM `product` order by name";
             Connection c=Dbase.getConnection();
             Statement st = null;
             st= c.prepareStatement(sss);
             re=st.executeQuery(sss);
             
             while(re.next())
             {
                 String name = re.getString(1);
                 com.addItem(name);
             }
            
        }catch(Exception e)
        {
            new JOptionPane().showMessageDialog(null,e.getMessage());
        }
        
    }
    
    public static void addmem(String n,String p)
    {
        try{
           if ("".equals(n)||"".equals(p)) op("???? ????? ??????????");
           else{
        Dbase.st=Dbase.getConnection().prepareStatement("INSERT INTO `user` (`username`, `password`) VALUES ('"+n+"', '"+p+"')");
        Dbase.st.executeUpdate();
        op("?? ????? ?????? ???? ");
           }
        }
       
        catch(Exception e)
        {
            op(e.getMessage());
            System.out.println("---"+e.getMessage());
        }
    }
    
    public static void deletmem(String g )
    {
        try{
        if ("".equals(g)) op("????  ?????????");
           else{
        String sss2 = "DELETE FROM `user` WHERE username ='"+g+"'";
         st =  getConnection().prepareStatement(sss2);
         st.execute(sss2);
          new  JOptionPane().showMessageDialog(null,"?? ????? ????? ");
        }
        }catch(Exception e)
                {
                   op(e.getMessage()) ;
                }
    }
    
    public static boolean log(String name,String pass)
    {
        try{
         String ss2 = "select password,type from users where name like'"+name+"'";
      
       st =  getConnection().prepareStatement(ss2);
       re= st.executeQuery(ss2);
       if(re.next())
       {
           if (re.getString(1).equals(pass.toString()))
           {
               username=name;
               type=re.getInt(2);
               return true;
           }
           else return false;
       }
       else 
           return false;
        }
        catch(Exception e)
        {
            op(e.getMessage());
            return false;
        }
        
    }
  public static int executeSql(String sql) 
     {
         Connection conn;
     try {
         conn = getConnection();
         PreparedStatement s;
            s= conn.prepareStatement(sql);
            s.executeUpdate();
            return 1;
            } 
        catch (SQLException e)
        {
            JOptionPane.showMessageDialog(null, e.getMessage());
            System.out.println(e.getMessage());
            return 0;
        }
      
     }
  public static ResultSet executeSelect(String sql) 
    {
        
      Connection conn;
      ResultSet rs=null;
     try {
         conn = getConnection();
    
      PreparedStatement s;
    
            s = conn.prepareStatement(sql);
            rs=s.executeQuery();
        }
        catch (SQLException e) 
        {
            JOptionPane.showMessageDialog(null,e.getMessage());
        }
        return rs;
    }
       
}


 