<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    </head>
    <body>
    <form>
    <select id="isTitles" name="isTitles">
    <option value="true">enable</option>
    <option value="false">disable</option>
</select>

            <input type="submit" name="h" value="h"/>
        </form>
        
<%
if(request.getParameter("h")!=null)
{
System.out.println("yyyyyyyy"+request.getParameter("isTitles"));
}


%>
    </body>
</html>