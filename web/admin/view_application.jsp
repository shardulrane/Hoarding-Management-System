<%-- 
    Document   : view_application
    Created on : 13 Nov, 2018, 6:59:08 PM
    Author     : shark
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="basic.connection_class"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--DOCTYPE html-->
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
    <title>Admin | Dashboard</title>

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
                            <a class="js-arrow" href="#">
                                <i class="fas fa-hospital-o"></i>Manage Hoardings</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="add_hoarding.jsp">Add Hoardings</a>
                                </li>
                                <li>
                                    <a href="update_hoarding.jsp">Update Hoardings</a>
                                </li>
                                <li>
                                    <a href="delete_hoarding.jsp">Delete Hoardings</a>
                                </li>
                            </ul>
                        </li>
                        
                         <li>
                            <a href="view_revenue.jsp">
                                <i class="fas fa-inr"></i>View Revenue Generated</a>
                        </li>
                         <li>
                            <a href="view_application.jsp">
                                <i class="fas fa-inr"></i>View Applications</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
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
                            <a class="js-arrow" href="#">
                                <i class="fas fa-hospital-o"></i>Manage Hoardings</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="add_hoarding.jsp"><i class="fas fa-plus-square"></i>Add Hoardings</a>
                                </li>
                                <li>
                                    <a href="update_hoarding.jsp"><i class="fas fa-user"></i>Update Hoardings</a>
                                </li>
                                <li>
                                    <a href="delete_hoarding.jsp"><i class="fas fa-user"></i>Delete Hoardings</a>
                                </li>
                                
                            </ul>
                        </li>
                         <li>
                            <a href="view_revenue.jsp">
                                <i class="fas fa-inr"></i>Generated Revenue</a>
                        </li>
                        
                         <li>
                            <a href="view_application.jsp">
                                <i class="fas fa-inr"></i>View Applications</a>
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

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                            <div class="col-lg-12">
                                <!-- MAP DATA-->
                                <div class="map-data" >
                                    <h3 class="title-3 m-b-30">
                                        <i></i>Content Verification</h3>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="table-responsive table--no-card m-b-30">
                                                <table class="table table-borderless table-striped table-earning">
                                                    <thead>
                                                        <tr>
                                                            <th>Application ID</th>
                                                            <th>Username</th>
                                                            <th>View</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                     <%
                                try {
            
                        Connection con=connection_class.getConnection();
                        PreparedStatement ps3=con.prepareStatement("select * from book_status where status=?");
                        ps3.setInt(1,0);
                        ResultSet rs1 = ps3.executeQuery();
                                
                                                            while(rs1.next()) {
                                                        %>
                                                        <tr>
                                                            <td><%= rs1.getInt("bookid")%></td>
                                                            <%
                        PreparedStatement ps2=con.prepareStatement("select name from user where uid=?");
                        ps2.setInt(1,rs1.getInt("uid"));
                        ResultSet rs2=ps2.executeQuery();
                        if(rs2.next()){
                                                            
                                                            %>
                                                            <td><%=rs2.getString("name")%></td>
                                                            
                                                            <td><a href="view_app.jsp?id=<%= rs1.getInt("bookid")%>&name=<%=rs2.getString("name")%>"><button class="btn btn-secondary btn-sm">
                                                                    <i class="fa fa-folder-open"></i> View
                                                                    </button></a></td>
                                                            <%}%>
                                                            
                                                        </tr>
                                                       <%
                                                       } %> 
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
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        <%
        }
        catch(SQLException e){

}%>

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
        
       
</body>

</html>
<!-- end document-->
