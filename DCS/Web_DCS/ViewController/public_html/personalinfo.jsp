لاسبوع اللي <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Vbean.Dbase"%>
    <%@ page import="java.sql.ResultSet"%>
<%@ page import="Vbean.Student"%>
<%
    HttpSession sr=request.getSession();
    String str=(String)sr.getAttribute("myUser");
    if(str != null)
    {
 %>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        
        
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>project</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Core CSS RTL-->
    <link href="css/bootstrap-rtl.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link href="css/sb-admin-rtl.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
    
    
        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
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
                                <a href="login.jsp"> خروج</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                         <li>
                                <a href="home.jsp" style="font-weight:bold;">الصفحة الرئيسيه</a>
                            </li>
                             
                            <li>
                                <a href="instructions.jsp" style="font-weight:bold;" >ارشادات</a>
                            </li>
                             
                            <li>
                                <a href="personalinfo.jsp" style="font-weight:bold;" >بياناتى الشخصية</a>
                            </li>
                             
                            <li>
                                <a href="desires.jsp" style="font-weight:bold;" >تسجيل الرغبات</a>
                            </li>
                             
                            <li>
                                <a href="editdesire.jsp" style="font-weight:bold;" >تعديل الرغبات</a>
                            </li>
                             
                            <li>
                                <a href="result.jsp" style="font-weight:bold;" >الاستعلام عن النتيجة</a>
                            </li>
                             
                            <li>
                                <a href="blank-page.html" style="font-weight:bold;" >تواصل معنا</a>
                            </li
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-md-12"/>
                            <div class="clearfix"></div>
                            
                            
                            <div class="table-responsive col-md-12">

                                <div class="col-md-12" style="background: #c4c4c4; width: 100%; height: 42px;">
                                   <h2 style="text-align: center; margin-top: 0px;">البيانات الشخصية</h2>
                               </div>
              

                               <table class="table table-hover">
              
                                <thead>
                                    <tr>
                                        <th>الاسم </th>
                                        <th><%=Student.name%></th>
                                        <th>الديانة </th>
                                        <th><%=Student.f_religion()%></th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                                  
                                    <tr>
                                        <td>الرقم القومي </td>
                                        <td><%=Dbase.ssn%></td>
                                        <td>المؤهل </td>
                                        <td><%=Student.f_qualification()%></td>

                                    </tr>
                                 <tr>
                                        <td>الحالة </td>
                                        <td><%=Student.f_state()%></td>
                                        
                                       <td>الجنسية</td>
                                        <td><%=Student.f_nationality()%></td>
                                    </tr>
                              
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-md-12"/>
                            <div class="clearfix"></div>
                            
                            
                            <div class="table-responsive col-md-12">

                                <div class="col-md-12" style="background: #c4c4c4; width: 100%; height: 42px;">
                                   <h2 style="text-align: center; margin-top: 0px;">درجــــــاتى</h2>
                               </div>
              

                               <table class="table table-hover">
              
                                <thead>
                                    <tr>
                                        <th>الماده</th>
                                        <th>الدرجة</th>
                                        <th>الماده</th>
                                        <th>الدرجة</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                                    <%
              
          String sql3 ="SELECT * FROM `grades` where Student_ssn like '"+Dbase.ssn+"'"; 
           String  ar="",en="",fr="",h="",g="",ps="",pj="",bi="",py="",ch="",m1="-",m2="-",gel="",st="",ed="";
             try{
          ResultSet rs2 =Dbase.executeSelect(sql3);
         
           
          if(rs2.next())
        {
         ar=rs2.getString("Arabic");
         en = rs2.getString("english");
         fr=rs2.getString("frensh");  h = rs2.getString("history");      g=rs2.getString("geography");
         ps=rs2.getString("philosophy"); pj=rs2.getString("psychology"); bi =rs2.getString("biology");
         py=rs2.getString("physics");  ch=rs2.getString("chmistry");     m1=rs2.getString("math1");
         m2=rs2.getString("math2"); gel=rs2.getString("geologia");       st=rs2.getString("statisics");
         ed=rs2.getString("EDpatriotism");
        }
        }
        catch(Exception ex)
        {
        System.out.print(ex);
        }
                 %>
                                    <tr>
                                        <td>اللغة العربية </td>
                                        <td><%=ar%></td>
                                        <td>اللغة الاجنبية الاولى</td>
                                        <td><%=en%></td>

                                    </tr>
                                 <tr>
                                        <td>اللغة الاجنبية التانية</td>
                                        <td><%=fr%></td>
                                        <td>الاحياء</td>
                                        <td><%=bi%></td>

                                    </tr>
                               <tr>
                                        <td>التاريخ</td>
                                        <td><%=h%></td>
                                        <td>الجغرافيا</td>
                                        <td><%=g%></td>

                                    </tr>
                                     <tr>
                                        <td>الفلسفة والمنطق</td>
                                        <td><%=ps%></td>
                                        <td>علم النفس والاجتماع</td>
                                        <td><%=pj%></td>

                                    </tr>
                                     <tr>
                                        <td>الفيزياء</td>
                                        <td><%=py%></td>
                                        <td>الكيمياء</td>
                                        <td><%=ch%></td>

                                    </tr>
                                     <tr>
                                        <td>رياضة بحتة</td>
                                        <td><%=m1%></td>
                                        <td>الرياضة التطبيقية</td>
                                        <td><%=m2%></td>

                                    </tr>
                                     <tr>
                                        <td>الجولوجيا والعلوم البيئية</td>
                                        <td><%=gel%></td>
                                        <td>الاحصاء والاقتصاد</td>
                                        <td><%=st%></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
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

    </body>
</html>
<%
}else response.sendRedirect("login.jsp");
%>