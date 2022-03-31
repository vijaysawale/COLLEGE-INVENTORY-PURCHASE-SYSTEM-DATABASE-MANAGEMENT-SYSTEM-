<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Previous Purchase Order</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
 
<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="adminfront.jsp"><img src="assets/images/icon/logo.png" alt="logo"></a>
                </div>
            <style type="text/css">
                .logo
                {
                    margin: 10px;
                }
                #logosize
                {
                    height: 80px;
                    width: 200px;
                }
                </style>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                            <li class="active">
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-dashboard"></i><span>dashboard</span></a>
                            </li>
                            <li>
                                <a href="allocatebudget.jsps" aria-expanded="true"><i class="ti-layout-sidebar-left"></i><span>Allocate Budget
                                    </span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-pie-chart"></i><span>Add Products</span></a>
                                <ul class="collapse">
                                    <li><a href="newproduct.jsp">New Product</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-palette"></i><span>Add Users</span></a>
                                <ul class="collapse">
                                    <li><a href="newuser.jsp">New User</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-slice"></i><span>Add Vendor</span></a>
                                <ul class="collapse">
                                    <li><a href="newvendor.jsp">New Vendor</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-table"></i>
                                    <span>Orders</span></a>
                                <ul class="collapse">
                                    <li><a href="ongoing.jsp">Ongoing Order</a></li>
                                    <li><a href="previousorder.jsp">Previous Orders</a></li>
                                </ul>
                            </li>
                            <li><a href="vendorrequest.jsp"><i class="ti-map-alt"></i><span>Vendor Requests</span></a></li>
                            <li><a href="invoice.html"><i class="ti-receipt"></i> <span>Invoice Summary</span></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                        <div class="search-box pull-left">
                            <form action="#">
                                <!--input type="text" name="search" placeholder="Search..." required>
                                <i-- class="ti-search"></i-->
                                <h2><span id="Welcome">Previous Purchase Orders</span></h2>
                            </form>
                        </div>
                    </div> 
                    <!-- profile info & task notification -->
                    <div class="col-md-6 col-sm-4 clearfix">
                        <ul class="notification-area pull-right">
                            <li id="full-view"><i class="ti-fullscreen"></i></li>
                            <li id="full-view-exit"><i class="ti-zoom-out"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- header area end -->
            <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <h4 class="page-title pull-left">Dashboard</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><a href="adminfront.jsp">Home</a></li>
                                <li><span>Order</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="assets/images/author/avatar1.jpg" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">Purchase Admin<i class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Message</a>
                                <a class="dropdown-item" href="#">Settings</a>
                                <a class="dropdown-item" href="logout.jsp">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page title area end -->
            <div class="main-content-inner">
                <!-- sales report area start -->
                <!-- market value area end -->
                <!-- row area start -->
                <div id="wrapper">
                        <style type="text/css">
                            .th-sm a
                            {
                               text-decoration: none;
        
                            }
                            .th-sm button
                            {
                                background: none;
                                border: none;
                            }
                            table.sortable thead {
                                background-color:#eee;
                                color:#666666;
                                font-weight: bold;
                                cursor: default;
                            }
                            </style> 
                        <table id="dtBasicExample" class="table table-striped table-bordered table-sm sortable" cellspacing="0" width="100%">
                                <thead>
                                  <tr>
                                    <th class="th-sm">Order ID
                                    </th>
                                    <th class="th-sm">Department Name
                                    </th>
                                    <th class="th-sm">Product Name
                                    </th>
                                    <th class="th-sm">Quantity
                                    </th>
                                    <th class="th-sm">Order Date
                                    </th>
                                    <th class="th-sm">Delivery Date
                                    </th>
                                    <th class="th-sm">Amount Spent
                                        
                                    </th>
                                  </tr>
                                </thead>
                                <tbody>
                                    <script src="sorttable.js"></script>
                                    <%
                                        try{
                                            String str="Computer";
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
                                            PreparedStatement pst = conn.prepareStatement("select * from userchooses where status='"+2+"'");
                                            ResultSet rs = pst.executeQuery();
                                            while(rs.next())
                                            {
                                              String orderid=rs.getString("orderid");
                                              String prid=rs.getString("proid");
                                              String dept=rs.getString("deptid");
                                              int qua=rs.getInt("quantity");
                                              String ordate=rs.getString("order_placed");
                                              String reqdate=rs.getString("reqbydate");
                                              int amt=rs.getInt("amount_spent");
                                              pst=conn.prepareStatement("select name from productdetails where productid=?");
                                              pst.setString(1, prid);
                                              ResultSet rsx=pst.executeQuery();
                                              String pname="";
                                              if(rsx.next())
                                              {
                                                pname=rsx.getString("name");
                                              }
                                              %>
                                             <tr>
                                                 <td>
                                                      <%
                                                        out.print(orderid);
                                                       %>
                                                  </td>
                                                  <td>
                                                      <%
                                                        out.print(dept);
                                                       %>
                                                  </td>
                                                  <td>
                                                      <%
                                                        out.print(pname);
                                                       %>
                                                  </td>
                                                  <td>
                                                      <%
                                                        out.print(qua);
                                                       %>
                                                  </td>
                                                  <td>
                                                      <%
                                                        out.print(ordate);
                                                       %>
                                                  </td>
                                                  <td>
                                                      <%
                                                        out.print(reqdate);
                                                       %>
                                                  </td>
                                                  <td>
                                                      <%
                                                        out.print(amt);
                                                       %>
                                                  </td>
                                            </tr>
                                              <%
                                            }
                                        }
                                        catch (Exception e){
                                            System.out.print(e);
                                            e.printStackTrace();    
                                        }
                                    %>
                                </tbody>
                            </table> 
            </div>
        </div>
        <!-- main content area end -->
    </div>
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="assets/js/pie-chart.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>
