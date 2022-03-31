<%-- 
    Document   : vendorsendrequest1.jsp
    Created on : 11 Oct, 2019, 10:35:09 PM
    Author     : piyush
--%>
<%@page import="java.util.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     String user1= session.getAttribute("userid").toString();
    String proname=request.getParameter("proname");
    String qua=request.getParameter("qua");
    String prize1=request.getParameter("price");
    String pbd=request.getParameter("prdate");
    String ordid=request.getParameter("ordid");
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
    
    PreparedStatement pst =conn.prepareStatement("select productid from productdetails where name=?");
    pst.setString(1, proname);
    ResultSet rs=pst.executeQuery();
    
    int proid=0;
    if(rs.next())
    {
        proid=rs.getInt("productid");
    }
    Statement str= conn.createStatement();
    int x=str.executeUpdate("insert into vendorproducts values('"+user1+"','"+proid+"','"+prize1+"','"+qua+"','"+pbd+"','"+ordid+"')");
    
    if(x==1)
    {
%>
<script>        
alert("Order Send Successfully");
</script>

<%
    }
    response.sendRedirect("vendorsendrequest.jsp");
}
catch(Exception e)
{
    System.out.print(e);
    e.printStackTrace();
}
%>