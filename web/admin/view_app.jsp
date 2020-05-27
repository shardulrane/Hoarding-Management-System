<%-- 
    Document   : view_app
    Created on : 13 Nov, 2018, 9:34:09 PM
    Author     : shark
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="basic.connection_class"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin | Dashboard </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../css/styleform.css">
    
</head>
<body>
    <%
    int id=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
         Connection con=connection_class.getConnection();
         PreparedStatement ps1=con.prepareStatement("select * from booking where bookid=?");
         ps1.setInt(1,id);
         ResultSet rs1 = ps1.executeQuery();
         if(rs1.next()) {
                   
    
    %>
<div class="container">
  <div class="row">
    <div class="col-md-2">
      <div class="thumbnail">
          <img src="../images/icon/logo_1.png"  style="width:100%">
      </div>
    </div>
    <div class="page-header">
        <h1>PANVEL CITY MUNICIPAL CORPORATION</h1>
    </div> 
      
<div class="jumbotron">
  <H2>Registeration Form</H2>
    <form action="../admin/documents.html">
    <div class="form-group">
      <label for="name">Applicant's Name: </label>
      <span  class="custom-control-description" id="name" name="name"><%=name%></span>
    </div>
    <div class="form-check form-group">
        <label>Status: </label>
        <span  class="custom-control-description" id="status" name="status"><%=rs1.getString(41)%></span>
     
    </div>

    <div class="form-group">

        <label for="addr">Address: </label>
        <span  class="custom-control-description" id="address" name="address"><%=rs1.getString("address")%></span>
    </div>
    <div class="form-check form-group">
        <label>Medium used for the advertisement: </label>
        <span  class="custom-control-description" id="medium" name="medium"><%=rs1.getString("medium")%></span>
    </div>
    <div class="form-group form-check">
        <label>Type of advertisement: </label>
        <span  class="custom-control-description" id="type_ad_opt" name="type_ad_opt"><%=rs1.getString("type_advertise_opt")%></span>
      </div>
    <div class="form-group">
      <label>Type of Advertisement: </label>
      <span  class="custom-control-description" id="type_ad_txt" name="type_ad_txt"><%=rs1.getString("type_advertisement")%></span>
    </div>
    <div class="form-group">
        <label>Have u applied for the: </label>
        <span  class="custom-control-description" id="applied" name="applied"/>YES
       <br>
        
      </div>
      <label class="custom-control-description">If yes,</label><br>
      <div class="form-group">
          <label for="f1">Type of Advertisement: </label>
          <span  class="custom-control-description" id="type_ad" name="type_ad"/><%=rs1.getString("type_advertisement")%></span>
      </div> 
      <div class="form-group form-inline">
        <label for="From">From: </label>&nbsp;&nbsp;
        <span  class="custom-control-description" id="from" name="from"><%=rs1.getString("start_date")%></span>
        <label for="to">To: </label>&nbsp;&nbsp;
        <span  class="custom-control-description" id="to" name="to"><%=rs1.getString("end_date")%></span>
      </div> 
      <div class="form-group">
        <label>Location: </label>
        <span  class="custom-control-description" id="location_opt" name="location_opt"><%=rs1.getString("Location")%></span>
      </div>
      <div class="form-group">
            <label for="locNo">Location No(s).: </label>
            <span  class="custom-control-description" id="locNo" name="locNo"><%=rs1.getString("Location_No")%></span>
      </div>
      <div class="form-group">
        <label for="ad">Give the tagline/summarize version of the advertisement: </label>
        <span  class="custom-control-description" id="tagline" name="tagline"><%=rs1.getString("tagline")%></span>
      </div>
      <div class="form-group">
        <label for="im">Attach an image file of our advertisement: </label>
        <span  class="custom-control-description" id="im" name="im"><img src="<%=rs1.getBlob("form_app")%>"></span>
      </div>

      <div class="form-group">
        <label for="dim"> Dimensions: </label>
        <table class="table table-1:striped table-inverse table-responsive" name="dim" id="dim">
          <thead class="thead-inverse">
            <tr>
              <th>Dimensions</th>
              <th>Square Feet</th>
            </tr>
            </thead>
            <tbody>
              <tr>
                <td scope="row">Length</td>
                <td><span  class="custom-control-description" id="lnfeet" name="lnfeet"><%=rs1.getString("dim_len")%></span></td>
              </tr>
              <tr>
                <td scope="row">Width</td>
                <td><span  class="custom-control-description" id="wtfeet" name="wtfeet"><%=rs1.getString("dim_wid")%></span></td>
              </tr>
              <tr>
              <td scope="row">Total Area</td>
              <td><span  class="custom-control-description" id="tafeet" name="tafeet"><%=rs1.getString("dim_area")%></span></td>
              </tr>
              <tr>
                <td scope="row">Height</td>
                <td><span  class="custom-control-description" id="htfeet" name="htfeet"><%=rs1.getString("dim_ht")%></span></td>
                </tr>
            </tbody>
        </table>
      </div>
      <div class="form-group">
        <div>
        <label for="street1">Name of the street: </label>
        <span  class="custom-control-description" id="street_name" name="street_name"><%=rs1.getString("street_name")%>
        </div>
        <div>
          <label for="serial">Serial Nos. of the hoardings within 25 metres radius of the Location: </label>
          <span  class="custom-control-description" id="serial" name="serial"><%=rs1.getString("near_serial_no")%></span>
        </div>
        <div>
            <label for="trees">No. of trees in the 25 metres radius of the circle: </label>
            <span  class="custom-control-description" id="no_of_trees" name="no_of_trees"><%=rs1.getString("near_serial_no")%></span>
        </div>
        <div>
            <label>Is it necessary to cut the trees: </label>
            <span  class="custom-control-description" id="cut_trees" name="cut_trees"><%=rs1.getString("cut_tree_opt")%></span>
        </div>
      </div>
      <div class="form-group">
        <label for="landOwner">Name of the Land Owner: </label>
        <span  class="custom-control-description" id="landOwner" name="landOwner"><%=rs1.getString("name_land_owner")%></span>
      </div>
      <div class="form-group">
          <label>Have u submitted NOC issued by the owner: </label>
          <span  class="custom-control-description" id="owner_noc" name="owner_noc"><%=rs1.getString("submited_noc_opt")%></span>
      </div>
      <div class="form-group">
          <label>Are the documents submitted according to the Article 19(B): </label>
          <span  class="custom-control-description" id="article19" name="article19"><%=rs1.getString("doc_article19_opt")%></span>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
            <a href="../accept_app?id=<%=id%>&uid=<%=rs1.getInt("uid")%>"><button type="button" class="btn btn-outline-success">
                                            <i class="fa fa-magic"></i>&nbsp; Accept</button></a>     
        </div>
              <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
              <a href="../reject_app?id=<%=id%>&uid=<%=rs1.getInt("uid")%>"><button type="button" class="btn btn-outline-danger">
                                            <i class="fa fa-rss"></i>&nbsp; Rejected</button></a>     
        
              </div>
			  <br>
   
  </form>
</div>
<%
}%>  
  </div>
    </div>

</body>
</html>
