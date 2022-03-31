
<%-- 
    Document   : login
    Created on : Sep 27, 2019, 2:30:13 PM
    Author     : Lenovo
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,java.sql.*"%>

<%

try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
    
    String email=request.getParameter("email");
    String pword=request.getParameter("password");
    String usname=request.getParameter("uname");
    
    Statement st= conn.createStatement();
    String vendor="vendor";
    String dept="Vendor";
        int y=st.executeUpdate("insert into login(loginid,password,logintype,dept,email)values('"+usname+"','"+pword+"','"+vendor+"','"+dept+"','"+email+"')");   
    
    if(y==1)
    {
%>
<script>
alert("Inserted Successfully");
</script>
<%
    response.sendRedirect("newvendor.jsp");
    }   
}
catch(Exception e)
{
    System.out.print(e);
    e.printStackTrace();
}

%>