<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="Vbean.Dbase"%>
<%@ page import="Vbean.Student"%>

<%

    HttpSession sr=request.getSession();
    String str=(String)sr.getAttribute("myUser");
    if(str != null)
    {
 
%>
<f:view>

    <html>
    <%
   String []desir ={"الفة الاجنبية الاولى","االلغة الفرنسية "," التاريخ ","الجغرافيا ","الفلسفة","علم النفس","الاجتماع ","الدراسات السكانية ","علوم المسرح","اللغة العربية ","الدراسات الاسلامية ","الاثار","المكتبات","الاعلام",""};
       String sql="select * from desires where Student_ssn='"+Dbase.ssn+"'";
        int [] k =new int [14];
       try{
       ResultSet rs= Dbase.executeSelect(sql);
      
       if(rs.next())
       {
       for(int i=0;i<14;i++)
       {
        k[i]=rs.getInt("d"+(i+1));   if(k[i]==-1) k[i]=14;   
        }
       }
       }catch(Exception ex)
       {
       System.out.println(ex);
       }
       
       %>
       <head>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <meta name="description" content=""/>
            <meta name="author" content=""/>
            <title>
                project
            </title>
            <!-- Bootstrap Core CSS -->
            <link href="css/bootstrap.min.css" rel="stylesheet"/>
            <!-- Bootstrap Core CSS RTL-->
            <link href="css/bootstrap-rtl.min.css" rel="stylesheet"/>
            <!-- Custom CSS -->
            <link href="css/sb-admin.css" rel="stylesheet"/>
            <link href="css/sb-admin-rtl.css" rel="stylesheet"/>
            <!-- Morris Charts CSS -->
            <link href="css/plugins/morris.css" rel="stylesheet"/>
            <!-- Custom Fonts -->
            <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
            <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
            <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
            <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <style>
    body {
    margin-top: 100px;
    background-color: #2c3e50;
    }
    .navbar-inverse {
    background-color: #2c3e50 !important;
    border-color: #080808;
}
@media (min-width: 768px)
{
.side-nav {
    background: #2c3e50 !important;
    right: 0;
    left: auto;
}
}
    </style>
        </head>
        <body>
         
       
                        <form name="f1" method="get">
            <div id="wrapper">
                <!-- Navigation -->
                <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                        </button>
                         
                        <a class="navbar-brand" href="home.jsp">Digital Coordination System</a>
                    </div>
                    <!-- Top Menu Items -->
                    <ul class="nav navbar-right top-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i style="padding-left:5px;" class="fa fa-user"></i><%=Student.name%></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="login.jsp">خروج</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav side-nav">
                            <li>
                                <a href="home.jsp">الصفحة الرئيسيه</a>
                            </li>
                             
                            <li>
                                <a href="instructions.jsp">ارشادات</a>
                            </li>
                             
                            <li>
                                <a href="personalinfo.jsp">بياناتى الشخصية</a>
                            </li>
                             
                            <li>
                                <a href="desires.jsp">تسجيل الرغبات</a>
                            </li>
                             
                            <li>
                                <a href="editdesire.jsp">تعديل الرغبات</a>
                            </li>
                             
                            <li>
                                <a href="result.jsp">الاستعلام عن النتيجة</a>
                            </li>
                             
                            <li>
                                <a href="blank-page.html">تواصل معنا</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
                <div id="page-wrapper">
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <div class="row">
                            <h3 style="text-align: center; color: #c4c4c4; font-weight: bold;">
                                تسجيل الرغبات
                            </h3>
                            <div class="col-lg-12">
                                <div class="col-md-12"/>
                            </div>
                        
                            <div class="col-lg-12">
                                    <form>
                                    </form>
                                    <h7>
                                        تم تسجيل الرغبات
                                        <div class="table-responsive col-md-12">
                                            <div class="col-md-12"
                                                 style="background: #c4c4c4; width: 100%; height: 42px;">
                                                <h2 style="text-align: center; margin-top: 0px;">
                                                    الرغبات المسجلة 
                                                </h2>
                                            </div>
                                            <table class="table table-hover">
                                                <thead>
                                                   
                                                </thead>
                                                 
                                                <tbody>
                                                    
                                                    <tr>
                                                        <td>الرغبة الاولى </td>
                                                        <td>
                                                            <%=desir[k[0]]%>
                                                        </td>
                                                        <td>الرغبة الثانية  </td>
                                                        <td>
                                                            <%=desir[k[1]]%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>الرغبة الثالثة </td>
                                                        <td>
                                                              <%=desir[k[2]]%>
                                                        </td>
                                                        <td>الرغبة الرابعة </td>
                                                        <td>
                                                              <%=desir[k[3]]%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>الرغبة الخامسة </td>
                                                        <td>
                                                              <%=desir[k[4]]%>
                                                        </td>
                                                        <td>الرغبة السادسة </td>
                                                        <td>
                                                           <%=desir[k[5]]%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>الرغبة السابعة </td>
                                                        <td>
                                                          <%=desir[k[6]]%>
                                                        </td>
                                                        <td>الرغبة الثامنة </td>
                                                        <td>
                                                             <%=desir[k[7]]%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>الرغبة التاسعة </td>
                                                        <td>
                                                          <%=desir[k[8]]%>
                                                        </td>
                                                        <td>الرغبة العاشرة </td>
                                                        <td>
                                                              <%=desir[k[9]]%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>الرغبة الحادية عشر</td>
                                                        <td>
                                                              <%=desir[k[10]]%>
                                                        </td>
                                                        <td>الرغبة الثانية عشر</td>
                                                        <td>
                                                             <%=desir[k[11]]%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>الرغبة الثالثة عشر</td>
                                                        <td>
                                                              <%=desir[k[12]]%>
                                                        </td>
                                                        <td>الرغبة الرابعة عشر</td>
                                                        <td>
                                                            <%=desir[k[13]]%>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </h7>
                                </div>
                            
                            
              
                            
                        </div>
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /#page-wrapper -->
            </div>
            <!-- /#wrapper -->
            <!-- jQuery -->
            <script src="js/jquery.js"></script>
            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script>
            <!-- Morris Charts JavaScript -->
            <script src="js/plugins/morris/raphael.min.js"></script>
            <script src="js/plugins/morris/morris.min.js"></script>
            <script src="js/plugins/morris/morris-data.js"></script>
           
    </form>
   
    
        </body>
    </html>
</f:view>
<%
}else response.sendRedirect("login.jsp");
%>