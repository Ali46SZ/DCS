lو<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Vbean.Student"%>
<%@ page import="Vbean.Dbase"%>
<%
 
    HttpSession sr=request.getSession();
    String str=(String)sr.getAttribute("myUser");
    if(str != null)
    {
   
    
String g="SELECT * FROM `desires` WHERE Student_ssn ='"+Dbase.ssn+"'";
if(Dbase.executeSelect(g).next())
{
response.sendRedirect("registred.jsp");
}
if(Student.relgion!=1)
response.sendRedirect("desires1.jsp");

%>
<f:view>
    <html>
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
        
            <%
            
String []desir ={"الفة الاجنبية الاولى","االلغة الفرنسية "," التاريخ ","الجغرافيا ","الفلسفة","علم النفس","الاجتماع ","الدراسات السكانية ","علوم المسرح","اللغة العربية ","الدراسات الاسلامية ","الاثار","المكتبات","الاعلام"};
                      
          int size= desir.length;
          if(Student.relgion==1 && Student.state==1) size =11;                               %>
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
                                <a href="home.jsp" style="font-weight:bold;">الصفحة الرئيسيه</a>
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
                                    &nbsp;
                                </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav><form>
                <div id="page-wrapper">
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <div class="row">
                            <h3 style="text-align: center; color: #c4c4c4; font-weight: bold;">
                                تسجيل الرغبات
                            </h3>
                            <div class="col-lg-6">
                                <div class="col-md-8">
                                    <form role="form" method="GET" id="g">
                                
                                      <div class="form-group">
                                            <label>
                                                الرغبه الاولى
                                            </label>
                                             
                                            <select class="form-control" id="c1" name="c1">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                            
                                          
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبة التانية
                                            </label>
                                             
                                            <select class="form-control" name="c2" id="c2">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                  <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبة الثالثة
                                            </label>
                                             
                                            <select class="form-control" name="c3" id="c3">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                  <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبة الرابعة
                                            </label>
                                             
                                            <select class="form-control" name="c4">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                 <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبة الخامسة
                                            </label>
                                             
                                            <select class="form-control" name="c5">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                 <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبة السادسة
                                            </label>
                                             
                                            <select class="form-control" name="c6">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                  <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبه السابعة
                                            </label>
                                             
                                            <select class="form-control" name="c7">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </form>
                                    </div>
                            </div>
                        
                            <div class="col-lg-6">
                                <div class="col-md-8">
                                    <form role="form" method="GET" action="#" name="f2" id="f2">
                               <form ></form>
                                 <div class="form-group">
                                                <label>
                                                    الرغبه الثامنة
                                                </label>
                                                 
                                                <select class="form-control" name="c8">
                                                    <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                    <option value="<%=i%>">
                                                        <%=desir[i]%>
                                                    </option>
                                                    <%}%>
                                                </select>
                                            </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبه التاسعة
                                            </label>
                                            <select class="form-control" name="c9">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                   <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبه العاشرة
                                            </label>
                                             
                                            <select class="form-control" name="c10">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                 <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبه الحادية عشر
                                            </label>
                                          
                                            <select class="form-control" name="c11">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                 <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                         <% if(size==14)
                                    { %>   
                                        <div class="form-group">
                                            <label>
                                                الرغبه الثانية عشر
                                            </label>
                                             
                                            <select class="form-control" name="c12">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                                  <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبه الثالثة عشر
                                            </label>
                                             
                                            <select class="form-control" name="c13">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                               <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                الرغبه الرابعة عشر
                                            </label>
                                             
                                            <select class="form-control" name="c14">
                                                <% for (int i=0;i<size;i++)
                                        {
                                      %>
                                      <option value="<%=i%>">
                                                    <%=desir[i]%>
                                                </option>
                                                <%}%>
                                            </select>
                                          
                                        </div>
                                          <%}%>
                                        </form></div>
                            </div>
                        
                            <button value="lig" class="btn btn-block btn-success col-md-3 col-md-offset-4" style="margin-right: 30%;
    margin-top: 10px;
    margin-bottom: 10px;" id="login" name="login" type="submit">
                                تسجيل
                            </button>
                            
                            
              
                            
                        </div>
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /#page-wrapper -->
            </form></div></form>
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
   
    <% 
    
     String log = request.getParameter("login");
    if(log !=null)
    {
    
    RequestDispatcher r=request.getRequestDispatcher("registred.jsp");
             r.include(request, response);
    System.out.println("yyyyyyeeeeesssss");
     try{
       int id[]= new int [14];
                
                   for(int i=0;i<size;i++)
                   {
                    String c= request.getParameter("c"+(i+1));
                    if(c!=null)
                   {
                   System.out.print(i+"="+c+"---");                                   
                   id[i]= Integer.parseInt(c); 
                   }
                   else{id[i]=-1;}
                   }
                 for(int o =size-1;o<desir.length;o++)
                 {
                 id[o]=-1;
                 }
                 
                for(int j=0;j<14;j++)
                 {
                    if(id[j]==-1) 
                    continue ;
                    else {
                    for(int k=j+1 ;k<14;k++)
                    if(id[j]==id[k])
                    {  
                   %>
                    <script > {
           alert("رجاءعدم تكرار الرغبات من فضلك اعد المحاوله");
                                   }
       </script>
                   <%
                    return ;
                    }
                 }
                } 
               String sql ="INSERT INTO `desires`"
               +"(`desir_id`, `d1`, `d2`, `d3`, `d4`, `d5`, `d6`, `d7`, `d8`, `d9`, `d10`, `d11`, `d12`, `d13`, `d14`, `Student_ssn`)"
              +" VALUES(NULL,"+id[0]+","+id[1]+","+id[2]+","+id[3]+","+id[4]+","+id[5]+","+id[6]+","+id[7]+","+id[7]+","+id[8]+","+id[9]+","+id[10]+","+id[11]+","+id[12]+", '"+Dbase.ssn+"')";
              if(Dbase.executeSql(sql)==1){
             %>
             <script >
             {
             window.location='registred.jsp'
             }
             </script>
             <%
             }
              else {
              //error 
              }
             }  catch(Exception ex)
                   {
                   System.out.println(ex.getMessage());
                   }
    }
    %>
        </body>
    </html>
</f:view>
<%
}
else
response.sendRedirect("login.jsp");
%>
