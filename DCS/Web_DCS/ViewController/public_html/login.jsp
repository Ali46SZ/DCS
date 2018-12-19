<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Vbean.Dbase"%>
<%@ page import="Vbean.Student"%>
<%@ page session="true"%>
<%

Dbase.ssn=null;
HttpSession se= request.getSession();
se.setAttribute("myUser",null);

System.out.println(se.getAttribute("myUser"));
%>
<html>


    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
      
      <link rel="stylesheet" href="css/style.css">
 

  </head>
    <body>
  <div id="wrap" dir="rtl">
 <div class="login-page">
 <center>
  <div class="form">
  <div class="formholder">

      
      <p class="message" style="color:#1abc9c; font-size:17px; font-weight:bold;">تسجيل الدخول</p>
   
    <form class="login-form">
      <input type="text" placeholder="من فضلك ادخل الرقم القومي " name="id"required  maxlength="14" id="ssn"/>
      <button name="login" id="login">دخول</button>
     
     <%
     
     String log=request.getParameter("login");
     String id=request.getParameter("id");
     if(log !=null)
     {
    String sql= "SELECT * FROM `student` WHERE `ssn`='"+id+"'";
    if(Dbase.check(sql)==1)
    {
            Dbase.ssn=id;
          Student.info(); 
          //ssession 
     se.setAttribute("myUser", Dbase.ssn);
     response.sendRedirect("home.jsp");
     }
     
     else 
     {
       %>
       <script > {
           alert("الرقم القومي غير صحيح");
       }
       </script>
       <%
     // response.sendRedirect("login.jsp");
     }
     }
     %>
    
          </form>
          </div>
  </div>
  </center>
</div>
  
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>