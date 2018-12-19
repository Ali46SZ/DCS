<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Vbean.Dbase"%>
<%@ page import="Vbean.Student"%>
<%@ page import="java.sql.ResultSet"%>
<%

    HttpSession sr=request.getSession();
    String str=(String)sr.getAttribute("myUser");
    if(str != null)
    {
 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        
    
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
                            <a href="home.jsp">الصفحة الرئيسيه</a>
                        </li>
                        <li>
                            <a href="instructions.jsp"> ارشادات</a>
                        </li>
                        <li>
                            <a href="personalinfo.jsp"> بياناتى الشخصية</a>
                        </li>
                        <li>
                            <a href="desires.jsp"> تسجيل الرغبات</a>
                        </li>

                        
                        <li>
                            <a href="editdesire.jsp"> تعديل الرغبات</a>
                        </li>
                        <li>
                            <a href="result.jsp"> الاستعلام عن النتيجة</a>
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
                        <div class="col-lg-12">
                            <h2 style="text-align: center; margin-top: 0px;">النتيجة</h2>
                            <div class="col-md-6"/>
                            <div class="clearfix"></div>
                            <div class="col-md-12">


النتيجة لم تعتمد بعد 
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
}
else response.sendRedirect("login.jsp");
%>