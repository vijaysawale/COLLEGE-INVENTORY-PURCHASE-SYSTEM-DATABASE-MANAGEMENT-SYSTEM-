<%-- 
    Document   : login
    Created on : Sep 22, 2019, 2:30:13 PM
    Author     : Lenovo
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,java.sql.*"%>

<%
    String user_name=request.getParameter("username");
    String pass_word=request.getParameter("password");
    
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
    
    PreparedStatement st= conn.prepareStatement("select logintype,dept from login where loginid= ? and password=?");
      
    st.setString(1, user_name);
    st.setString(2, pass_word);
    ResultSet rs = st.executeQuery();
    
    if(rs.next())
    {
    String user_type = rs.getString("logintype");
    
        if(user_type.equalsIgnoreCase("admin"))
        {
            session.setAttribute("userid", user_name);
            response.sendRedirect("adminfront.jsp");
        }
        if(user_type.equalsIgnoreCase("user"))
        {
            session.setAttribute("userid", user_name);
            response.sendRedirect("userfront.jsp");
        }
        if(user_type.equalsIgnoreCase("vendor"))
        {
            session.setAttribute("userid", user_name);
            response.sendRedirect("vendorfront.jsp");
        }
        else
        {
            response.sendRedirect("index.html");
        }
    }
}
catch(Exception e)
{
    System.out.print(e);
    e.printStackTrace();
}

%>