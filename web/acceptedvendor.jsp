<%-- 
    Document   : login
    Created on : Sep 27, 2019, 2:30:13 PM
    Author     : Lenovo
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,java.sql.*"%>

<%      
    String orderid = request.getParameter("orderid");
   response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
    if(session.getAttribute("userid")==null)
  {
      response.sendRedirect("index.html");
  }
try{

    int ordid=Integer.parseInt(orderid);
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
    
    
    PreparedStatement str= conn.prepareStatement("select * from vendorproducts where orderid=?");
    str.setInt(1, ordid);
    ResultSet rs=str.executeQuery();
    String od="";
    int amt=0;
    if(rs.next())
    {
        od=rs.getString("probydate");
        amt=rs.getInt("productprice");
    }
    
    str= conn.prepareStatement("update userchooses set status=?,reqbydate=?,amount_spent=? where orderid=?");
    str.setInt(1, 2);
    str.setString(2,od);
    str.setInt(3, amt);
    str.setInt(4, ordid);
    int x=str.executeUpdate();
    
    str= conn.prepareStatement("delete from vendorproducts where orderid=?");
    str.setInt(1, ordid);
    int y=str.executeUpdate();
    
    if(x==1 && y==1)
    {
      response.sendRedirect("vendorrequest.jsp");   
    }
}
catch(Exception e)
{
    System.out.print(e);
    e.printStackTrace();
}

%>