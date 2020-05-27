<%-- 
    Document   : documents
    Created on : 13 Nov, 2018, 9:07:34 AM
    Author     : shark
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="basic.connection_class"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>User | Dashboard </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../css/styleform.css">
<script type="text/javascript">
        function GetDays(){
                var dropdt = new Date(document.getElementById("to").value);
                var pickdt = new Date(document.getElementById("from").value);
                return parseInt((dropdt - pickdt) / (24 * 3600 * 1000));
        }

        function cal(){
        if(document.getElementById("to")){
            var no_days=GetDays();
            var h_cost=document.getElementById("hor_cost").value;
           var total_cost=no_days*h_cost;
            document.getElementById("cost").value=total_cost;
           
        }  
    }

    </script>
</head>
<body>
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
    <H2>ATTACH DOCUMENTS</H2>
    <form action="../reg_app" method="post" enctype="multipart/form-data">
        <%
            try{
        int hid=Integer.parseInt(request.getParameter("hid"));
        Connection con=connection_class.getConnection();
                        PreparedStatement ps3=con.prepareStatement("select * from hoarding where hid=?");
                        //int uid=Integer.parseInt(session.getAttribute("uid").toString());
                        ps3.setInt(1,hid);
                        ResultSet rs3=ps3.executeQuery();
                        if(rs3.next()){
                        double cost1=rs3.getDouble(6);
                        //System.out.println(cost1);
        %>
        <input type="hidden" name="hor_id" value="<%=hid%>">
        <input type="hidden" name="hor_cost" id="hor_cost" value="<%=cost1%>">
        <div class="form-group">
      <label for="name">Applicant's Name</label>
      <input type="text" class="form-control" id="name" placeholder="Enter email" name="name">
    </div>
    <div class="form-check form-group">
        <span class="custom-control-description">Status:</span><br>
    
        <input type="radio" class="form-check-input px-10" name="status" id="status" value="0" >
        Private Organisation<br>
        <input type="radio" class="form-check-input" name="status" id="status" value="1" >
        Company<br>
        <input type="radio" class="form-check-input" name="status" id="status" value="2" >
        Charitable Trust<br>
        <input type="radio" class="form-check-input" name="status" id="status" value="3">
        Others<br>
     
    </div>

    <div class="form-group">

        <label for="addr">Address:</label>
        <textarea class="form-control px-10" name="addr" id="addr" rows="3"></textarea>
    </div>
    <div class="form-check form-group">
        <span class="custom-control-description">Medium used for the advertisement:</span><br>
        <div class="form-group">
        <input class="form-check-input" type="radio" name="n1" id="n11" value="Broadcasted"> Broadcasted<br>
        <input class="form-check-input" type="radio" name="n1" id="n12" value="Not Broadcasted"> Not Broadcasted<br>
        </div>
    </div>
    <div class="form-group form-check">
        <span class="custom-control-description">Type of advertisement</span><br>
        <div class="form-group">
          <input class="form-check-input" type="radio" name="n2" id="n21" value="Temporary"> Temporary<br>
          <input class="form-check-input" type="radio" name="n2" id="n22" value="Not Temporary"> Not Temporary<br>
        </div>
      </div>
    <div class="form-group">
      <label for="f1">Type of Advertisement</label>
      <input type="text" name="f1" id="f1" class="form-control" placeholder="">
    </div>
    <div class="form-group">
        <span class="custom-control-description">Have u applied for the</span>
        <div class="form-group form-check-inline">
          <input class="form-check-input" type="radio" name="n3" id="n31" value="Yes"> Yes&nbsp;
          <input class="form-check-input" type="radio" name="n3" id="n32" value="No"> No
        </div>
       <br>
        
      </div>
      <label class="custom-control-description">If yes,</label><br>
      <div class="form-group">
          <label for="f1">Type of Advertisement</label>
          <input type="text" name="f1" id="f1" class="form-control" placeholder="">
      </div> 
      <div class="form-group form-inline">
        <label for="From">From:</label>&nbsp;&nbsp;
        <input type="date" id="from" name="from" class="calendar" onchange="cal()">
      
          <label for="to">To:</label>&nbsp;&nbsp;
        <input type="date" id="to" name="to" class="calendar" onchange="cal()">
        </div> 
      <input type="hidden" name="cost" id="cost"/>
      <div class="form-group">
        <span class="custom-control-description">Location</span>
        <div class="form-group form-check-inline">
          <input class="form-check-input" type="radio" name="n4" id="n41" value="Single"> Single&nbsp;
          <input class="form-check-input" type="radio" name="n4" id="n42" value="Multiple"> Multiple
        </div>
      </div>
      <div class="form-group">
            <label for="locNo">Location No(s).</label>
            <textarea class="form-control" name="locNo" id="locNo" rows="3"></textarea>
      </div>
      <div class="form-group">
        <label for="ad">Give the tagline/summarize version of the advertisement:</label>
        <input type="text" class="form-control" name="ad" id="ad"  placeholder="Summary">
      </div>
      <div class="form-group">
        <label for="im">Attach an image file of ur advertisement:</label>
        <input type="file" class="form-control" name="im" id="im">
      </div>

      <div class="form-group">
        <label for="dim"> Dimensions</label>
        <table class="table table-1:striped table-inverse table-responsive" name="dim" id="dim">
          <thead class="thead-inverse">
            <tr>
              <th>Dimensions</th>
              <th>Square Feet</th>
              <th>Square Metres</th>
            </tr>
            </thead>
            <tbody>
              <tr>
                <td scope="row">Length</td>
                <td><input type="text" name="lnfeet" id="lnfeet" class="form-control"></td>
                <td><input type="text" name="lnmet" id="lnmet" class="form-control"></td>
              </tr>
              <tr>
                <td scope="row">Width</td>
                <td><input type="text" name="wtfeet" id="wtfeet" class="form-control"></td>
                <td><input type="text" name="wtmet" id="wtmet" class="form-control"></td>
              </tr>
              <tr>
              <td scope="row">Total Area</td>
              <td><input type="text" name="tafeet" id="tafeet" class="form-control"></td>
                <td><input type="text" name="tamet" id="tamet" class="form-control"></td>
              </tr>
              <tr>
                <td scope="row">Height</td>
                <td><input type="text" name="htfeet" id="htfeet" class="form-control"></td>
                <td><input type="text" name="htmet" id="htmet" class="form-control"></td>
                </tr>
            </tbody>
        </table>
      </div>
      <div class="form-group">
        <span class="custom-control-description">Have u applied for the</span>
        <div>
        <label for="street1">Name of the street:</label>
        <input type="text" name="street1" id="street1" class="form-control">
        </div>
        <div>
            <label for="street2">Width of the street:</label>
            <input type="text" name="street2" id="street2" class="form-control">
        </div>
        <div>
          <label for="serial">Serial Nos. of the hoardings within 25 metres radius of the Location:</label>
          <input type="text" class="form-control" id="serial" name="serial">
        </div>
        <div>
            <label for="trees">No. of trees in the 25 metres radius of the circle</label>
            <input type="number" class="form-control" id="trees" name="trees">
        </div>
        <div>
            <span class="custom-control-description">Is it necessary to cut the trees:</span>
            <div class="form-group form-check-inline">
              <input class="form-check-input" type="radio" name="n5" id="n51" value="Yes"> Yes&nbsp;
              <input class="form-check-input" type="radio" name="n5" id="n52" value="No"> No
            </div>
        </div>
      </div>
      <div class="form-group">
        <label for="landOwner">Name of the Land Owner:</label>
        <input type="text" name="landOwner" id="landOwner" class="form-control" placeholder="">
      </div>
      <div class="form-group">
          <span class="custom-control-description">Have u submitted NOC issued by the owner:</span>
          <div class="form-group form-check-inline">
            <input class="form-check-input" type="radio" name="n6" id="n61" value="Yes"> Yes&nbsp;
            <input class="form-check-input" type="radio" name="n6" id="n62" value="No"> No
          </div>
      </div>
      <div class="form-group">
          <span class="custom-control-description">Are the documents submitted according to the Article 19(B): </span>
          <div class="form-group form-check-inline">
            <input class="form-check-input" type="radio" name="n7" id="n71" value="Yes"> Yes&nbsp;
            <input class="form-check-input" type="radio" name="n7" id="n72" value="No"> No
          </div>
        </div>
      <br>
	<div class="row ">
              <div class="col-md-12">
					1.ADDRESS OF HOARDING SELECTED :
					<input type="text" class="form-control" placeholder="Address" />
              </div>
          </div>
		<div class="row ">
              <div class="col-md-12">
					2.TYPE OF ADVERTISEMENT
					<input type="text" class="form-control" placeholder="Type" />
              </div>
          </div>
		  	  
	<div class="container">
	<table class="table">
    <thead>
      <tr>
        <th>Sr. no. /<br>अनुक्रमांक</th>
        <th>Documents required /<br>आवश्यक कागदपत्रे </th>
		<th>Upload /<br> अपलोड करा </th>
        <th>Added / No / Not Required /<br>जोडले / नाही / आवश्यक नाही</th>
		<th>Page no. / <br> पृष्ठ क्रमांक</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Form application / <br> फॉर्म अर्ज</td>
		<td><input type="file" name="pic_app" accept="image/*"></td>
        <td><select name="app_opt">
		  <option value="Added">Added / हो </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>
      
	  <tr>
        <td>2</td>
        <td>Owner land (7/12) <br>जागेसंबंधी कागदपत्र  </td>
		<td><input type="file" name="pic_712" accept="image/*"></td>
        <td><select name="land">
		  <option value="Added">Added / हो </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	  <tr>
        <td>3</td>
        <td>Society NOC on Society Letter Head  <br>सोसाटीचे ना हरकत प्रमाणपत्र </td>
		<td><input type="file" name="pic_soc_noc" accept="image/*"></td>
        <td><select name="society_noc">
		  <option value="Added">Added / हो </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	  <tr>
        <td>4</td>
        <td>Resolution of Society on Society Letter Head <br>सोसाटीचा सर्वानुमते मंजूर ठराव </td>
		<td><input type="file" name="pic_res" accept="image/*"></td>
        <td><select name="resolution">
		  <option value="Added">Added / हो </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	  <tr>
        <td>5</td>
        <td>Society light bill<br>सोसायटीचे लीगत बिल</td>
		<td><input type="file" name="pic_light_bill" accept="image/*"></td>
        <td><select name="light_bill">
		  <option value="Added">Added / हो </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	  <tr>
        <td>6</td>
        <td>Certificate of structural engineering <br> संरचना अभियंता यांचे प्रमाणपत्र</td>
		<td><input type="file" name="pic_struct_eng" accept="image/*"></td>
        <td><select name="cert_of_struct_eng">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	  <tr>
        <td>7</td>
        <td>Stability Certificate <br> स्तिरता प्रमाणपत्र </td>
		<td><input type="file" name="pic_stability" accept="image/*"></td>
        <td><select name="stab_cert">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	  <tr>
        <td>8</td>
        <td>Traffic Police Noc <br>वाहतूक विभागाचे ना हरकत प्रमाणपत्र </td>
		<td><input type="file" name="pic_police_noc" accept="image/*"></td>
        <td><select name="traf_noc">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	  <tr>
        <td>9</td>
        <td>Location Plan<br>स्थळदर्शक नकाशा </td>
		<td><input type="file" name="pic_loc_plan" accept="image/*"></td>
        <td><select name="location_plan_opt">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	   <tr>
        <td>10</td>
        <td>Site DTP Proposed photo<br>साइट डीटीपी प्रस्तावित फोटो </td>
		<td><input type="file" name="pic_dtp" accept="image/*"></td>
        <td><select name="site_dtp">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>
 <tr>
        <td>11</td>
        <td>Under Taking I<br>हमीपत्र  I </td>
		<td><input type="file" name="pic_undertaking_1" accept="image/*"></td>
        <td><select name="under_1">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	   <tr>
        <td>12</td>
        <td>Under Taking II <br>हमीपत्र  II </td>
		<td><input type="file" name="pic_undertaking_2" accept="image/*"></td>
        <td><select name="under_2">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

	   <tr>
        <td>13</td>
        <td>Advertising insurance<br>जाहिरात विमा</td>
		<td><input type="file" name="pic_insurance" accept="image/*"></td>
        <td><select name="insurance_ad">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>
	  <tr>
        <td>14</td>
        <td>Advertising size<br>जाहिरातीचे आकार </td>
		<td><input type="file" name="pic_ad_size" accept="image/*"></td>
        <td><select name="size_ad">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>
	  <tr>
        <td>15</td>
        <td>Rental Agreement<br>भाडेकर</td>
		<td><input type="file" name="pic_rent_arg" accept="image/*"></td>
        <td><select name="rent_ag">
		  <option value="Added">Added / हो  </option>
		  <option value="Not Added">Not Added / नाही </option>
		  <option value="Not Required">Not Required / आवश्यक नाही</option>
		  </select></td>
		  <td> <input type="number" class="form-control" placeholder="Page number" /></td>
      </tr>

    </tbody>
  </table>
  <br>
    <div class="row ">
              <div class="col-md-12">
				 APPLICANTS NAME :
					<input type="text" class="form-control" placeholder="Applicants name" />
              </div>
          </div>
		  <br>
		  <div class="row ">
              <div class="col-md-12">
			 ADDRESS :
                  <input type="text" class="form-control" placeholder="Address" />
              </div>
          </div>
    <br>
	<div class="row ">
              <div class="col-md-3 col-sm-3 col-xs-3">
                  PHONE NUMBER :
                  <input type="number" class="form-control" placeholder="Phone number" name="phone_no" />
              </div>
			 
              <div class="col-md-3 col-sm-3 col-xs-3">
                  E-MAIL ID :
                  <input type="email" class="form-control" placeholder="Phone number" name="email_id"/>
              </div>
			  </div>
			  <br>
        <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                 <a href="NewRegForm.html"><input type="cancel"  class="btn btn-danger" value="Back" /></a>
              </div>
              <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                  <input type="submit"  class="btn btn-primary btn-block" value="Submit" />
              </div>
			  
            <br>
          </div>

 

	
	

	
	
	
	</form>
	 </div>
    </div>
    </div>
        <%}}catch(Exception e){}%>
	</body>
	</html>
