<%-- 
    Document   : user_history
    Created on : 14 Nov, 2018, 12:31:45 AM
    Author     : shark
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="basic.connection_class"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : userhome
    Created on : 12 Nov, 2018, 2:19:18 PM
    Author     : shark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--DOCTYPE html-->
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon">
<link rel="icon" href="../favicon.ico" type="image/x-icon">
    <!-- Title Page-->
    <title>User | Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="../css/font-face.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="../vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="../vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="../vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="../vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="../vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="../vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="../vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="../vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="../vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
<br>

           
    <div class="page-wrapper">

        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="../images/icon/logo_1.png"/>
                        </a>
                    
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="userhome.jsp">
                                <i class="fas fa-users"></i>Home</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="user_history.jap">
                                <i class="fas fa-hospital-o"></i>History</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
       <br><br>

        <aside class="menu-sidebar d-none d-lg-block">


            <div class="logo">
                <a href="#">
                    <img src="../images/icon/logo_1.PNG" height="60px" width="95px"   alt="PMC" /><strong> P.M.C</strong>
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="has-sub">
                            <a class="js-arrow" href="userhome.jsp">
                                <i class="fas fa-users"></i>Home</a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="user_history.jsp">
                                <i class="fas fa-th-list"></i>History</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                   
                    <div class="container-fluid">
                        <div class="header-wrap">
                             <div id="google_translate_element"></div>

<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="header-button">
                                <div class="account-wrap" >
                                    <div class="account-item clearfix js-item-menu" >
                                        <div class="image">
                                            <img src="../images/icon/admin.png" alt="Admin" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#"><%=(String)session.getAttribute("name")%></%>
                                            </a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="../images/icon/admin.png" alt="Admin" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#"><%=(String)session.getAttribute("name")%></%></a>
                                                    </h5>
                                                    
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                
                                            <div class="account-dropdown__footer">
                                                <a href="../Logout">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->
            <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                                <div class="col-lg-12">
                                    <!-- MAP DATA-->
                                    
                                    <div class="map-data" >
                                        <h3 class="title-3 m-b-30">
                                            <i></i>History</h3>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="table-responsive table--no-card m-b-30">
                                                    <table class="table table-borderless table-striped table-earning">
                                                        <thead>
                                                            <tr>
                                                                <th>Application ID</th>
                                                                <th>Type</th>
                                                                <th>Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <%
                        
                        Connection con=connection_class.getConnection();
                        PreparedStatement ps3=con.prepareStatement("select bookid,type_advertisement,total_cost from booking where uid=?");
                        int uid=Integer.parseInt(session.getAttribute("uid").toString());
                        ps3.setInt(1,uid);
                        ResultSet rs3=ps3.executeQuery();
                        while(rs3.next()){
                            
                        %>
                        <tr>
                                                            <%
                           PreparedStatement ps4=con.prepareStatement("select status from book_status where bookid=?");
                        ps4.setInt(1,rs3.getInt("bookid"));
                        ResultSet rs4=ps4.executeQuery();
                        if(rs4.next()){
                                          if(rs4.getInt("status")==0)
                                          {
                                                            %>
                                                        <td><%=rs3.getInt("bookid")%></td>    
                                                        <td><%=rs3.getString("type_advertisement")%></td>
                                                        <td class="desc">Pending</td>
                                           <%}%>
                                           <%
                                           if(rs4.getInt("status")==1)
                                          {
                                              
%>
                                                        <td><%=rs3.getInt("bookid")%></td>    
                                                        <td><%=rs3.getString("type_advertisement")%></td>
                                                        <td class="desc"><a href="../Payment/payment.html"><button type="button" class="btn btn-outline-success">
                                            <i class="fa fa-magic"></i>&nbsp; Accepted -> Pay ₹<%=rs3.getInt("total_cost")%></button></a></td>
                                           <%}%>
                                           <%
                                           if(rs4.getInt("status")==2)
                                          {
                                                            %>
                                                        <td><%=rs3.getInt("bookid")%></td>    
                                                        <td><%=rs3.getString("type_advertisement")%></td>
                                                        <td class="desc"><button type="button" class="btn btn-outline-danger">
                                            <i class="fa fa-rss"></i>&nbsp; Rejected</button></td>
                                           <%}%>             
                                                        <%}%>
                                                    </tr>
                                                                  
                            <%}%>
                                                            
                                                            
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- END MAP DATA-->
                                               
                                <!-- END PAGE CONTAINER-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <!-- MAIN CONTENT-->
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        

    <!-- Jquery JS-->
    <script src="../vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="../vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="../vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="../vendor/slick/slick.min.js">
    </script>
    <script src="../vendor/wow/wow.min.js"></script>
    <script src="../vendor/animsition/animsition.min.js"></script>
    <script src="../vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="../vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="../vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="../vendor/circle-progress/circle-progress.min.js"></script>
    <script src="../vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="../vendor/select2/select2.min.js">
    </script>
    
    <!-- Map Api-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ&callback=initMap"></script>

    <!-- Main JS-->
    <script src="../js/main.js"></script>
     
    <!--Map-->
        
       
</body>

</html>
<!-- end document-->
