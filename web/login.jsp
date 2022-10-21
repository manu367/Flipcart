<%@ page import="helpers.Message" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 13-10-2022
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:useBean id="adminObj" class="entity.Admin"></jsp:useBean>
<jsp:useBean id="adminDao" class="dao.AdminDaoImp"></jsp:useBean>
<jsp:setProperty name="adminObj" property="*"></jsp:setProperty>

<%
Message message =adminDao.login(adminObj);
if(message!=null)
{
   if(message.getMessage().equalsIgnoreCase("Invalid crenditials") || message.getMessage().equalsIgnoreCase("Inactive user")) {

       RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");
       requestDispatcher.include(request, response);
   }

   else
   {
       if(message!=null) {
           String str[]=message.getMessage().split("/");
           session.setAttribute("uname",str[1]);
           session.setAttribute("utype",str[2]);
            response.sendRedirect("adminDashboard.jsp");
       }
   }
   }

%>

</body>

</html>
