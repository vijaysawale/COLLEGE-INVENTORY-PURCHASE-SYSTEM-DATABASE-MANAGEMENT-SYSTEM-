<%-- 
    Document   : login
    Created on : Sep 27, 2019, 2:30:13 PM
    Author     : Lenovo
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,java.sql.*"%>

<%
    String uid=request.getParameter("userid");
    String usname=request.getParameter("uname");
    String pword=request.getParameter("pass");
    String dept=request.getParameter("dep");
    String email=request.getParameter("email");
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
    
    Statement st= conn.createStatement();
    
    String user="user";
    int y=st.executeUpdate("insert into login(loginid,password,logintype,dept,email)values('"+usname+"','"+pword+"','"+user+"','"+dept+"','"+email+"')");   
    
    if(y==1)
    {
%>
<script>
alert("Updated Successfully");
</script>
<%
    response.sendRedirect("newuser1.jsp");
    }   
}
catch(Exception e)
{
    System.out.print(e);
    e.printStackTrace();
}

%>