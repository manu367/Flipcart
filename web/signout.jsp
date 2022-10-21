<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 16-10-2022
  Time: 00:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
     <%

     if(session!=null) {
          session.invalidate();
          response.sendRedirect("home.jsp");
     }
     %>


</head>
<body>

</body>
</html>
