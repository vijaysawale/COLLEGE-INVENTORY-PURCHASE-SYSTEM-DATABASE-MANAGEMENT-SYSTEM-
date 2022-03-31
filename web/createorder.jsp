<%-- 
    Document   : login
    Created on : Sep 27, 2019, 2:30:13 PM
    Author     : Lenovo
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,java.sql.*"%>

<%
    String proname=request.getParameter("proname");
    String qua=request.getParameter("qua");
    String reqdate=request.getParameter("reqdate");
    int pid=0;
    String username=session.getAttribute("userid").toString();
                                                  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
    if(session.getAttribute("userid")==null)
  {
      response.sendRedirect("index.html");
  }
try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
    
    PreparedStatement st= conn.prepareStatement("select productid from productdetails where name=?");
      
    st.setString(1, proname);
    ResultSet rs = st.executeQuery();
    
    if(rs.next())
    {
    pid = rs.getInt("productid");
    }
    Random random=new Random();
    int rn = random.nextInt(10000);
    String dept="";
    String sql = "SELECT dname FROM user where username='"+username+"'";
    PreparedStatement ps = conn.prepareStatement(sql);
    rs = ps.executeQuery(); 
    if(rs.next())
    {
    dept=rs.getString("dname");
    }
    Calendar calendar = Calendar.getInstance();
    java.sql.Date place_order = new java.sql.Date(calendar.getTime().getTime());

    Statement str= conn.createStatement();
    int x=str.executeUpdate("insert into userchooses(proid,quantity,reqbydate,deptid,status,orderid,order_placed,userid,amount_spent)values('"+pid+"','"+qua+"','"+reqdate+"','"+dept+"','"+0+"','"+rn+"','"+place_order+"','"+username+"','"+0+"')");
    
    if(x==1)
    {
%>
<script>        
alert("Order Send Successfully");
</script>

<%
    }
    response.sendRedirect("productpurchase.jsp");
}
catch(Exception e)
{
    System.out.print(e);
    e.printStackTrace();
}
%>