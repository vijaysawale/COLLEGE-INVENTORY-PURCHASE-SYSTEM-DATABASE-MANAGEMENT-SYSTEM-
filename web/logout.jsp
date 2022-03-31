<%-- 
    Document   : logout
    Created on : Oct 13, 2019, 6:04:35 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
      <%
          session = request.getSession();
          session.removeAttribute("userid");
          session.invalidate();
          response.sendRedirect("index.html");
      %>
       
    </body>
</html>
