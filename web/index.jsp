<%-- 
    Document   : index
    Created on : Mar 24, 2020, 10:44:15 PM
    Author     : lahiru
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>


<form action="index.jsp" method="post">
        <div class="container-fluid" style="background-color: white;">
            <br>
            <div class="row justify-content-center">
                 <div class="col-3 col-sm-3 col-md-3 col-lg-3">
                                    
                    
                </div>
                <div class="col-3 col-sm-3 col-md-3 col-lg-3">
                                     <select class="form-control" id="selectDistric" name="distric">
                                        <option value="Ampara">Select Distric</option>
                                        <option value="Ampara">Ampara</option>
                                        <option value="Anuradhapura">Anuradhapura</option>
                                        <option value="Badulla">Badulla</option>
                                        <option value="Colombo">Colombo</option>
                                        <option value="Galle">Galle</option>
                                        <option value="Hambantota">Hambantota</option> 
                                        <option value="Jaffna">Jaffna</option> 
                                        <option value="Kandy">Kandy</option>
                                        <option value="Kegalle">Kegalle</option>

                                    </select>
                    
                </div>
                <div class="col-3 col-sm-3 col-md-3 col-lg-3 " >
                                    
                     <button type='submit' name='htName'  id=''style="padding: 3px 5px;border-radius: 0px; background-color: #ababab; border: 0px; " class='btn btn-xs btn-primary pull-right'>SEARCH</button>
                </div>
            </div>
            <br>
        </div>
    </form> 

<form action="viewCenter.jsp" method="post">
        <div class="container">

<ul class="row">
                <%  String name = request.getParameter("distric");
                    
                    try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
                  Statement st = con.createStatement();
                  String select = "SELECT * FROM signup where distric like '%" + name + "%' ";
                  ResultSet rs = st.executeQuery(select); 
                   while(rs.next()){ 
               String mdname = rs.getString("mdname");
               String fileName = rs.getString("fileName");
                int id=rs.getInt("id");
%>

      <li class="col-12 col-md-6 col-lg-3">
          <div class="cnt-block equal-hight" style="height: 300px; background-color: #ababab; margin: 10px;">
            <img src="images/<%=fileName%>" class="img-responsive" alt="" style="height: 200px; width: 100%; background-color: black">
            <br><br>
            <h4><%=mdname%></h4>
            <button type='submit' name='htName' value='<%=id%>' id='view' style='width: 100%;' class='btn btn-xs btn-primary pull-right'>View</button>
          </div>
      </li>

  <% }} catch(Exception e1){out.print(e1);} %>   
 </ul>

        </div>
             <div class="container-fluid">
            <div class="row">
                 <div class="col-12 col-sm-12 col-md-12 col-lg-12" id="map" style="background-color: green; height: 600px;">

                 </div> 
            </div>
            
        </div>

  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDiMT1b7ENi3YVqQgLWyE0HPIXYcsz-dOY&callback=initMap">
</script>
<%  try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
                  Statement st = con.createStatement();
                  String select = "SELECT * FROM signup  where distric like '%" + name + "%' ";
                  ResultSet rs = st.executeQuery(select); 
                  
                  Statement aa = con.createStatement();
                  String select1 = "SELECT * FROM signup  where distric like '%" + name + "%'";        
                  ResultSet ss = aa.executeQuery(select1); 

               
%>

<script>
function initMap() {
    var map;
    var bounds = new google.maps.LatLngBounds();
    var mapOptions = {
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the web page
    map = new google.maps.Map(document.getElementById("map"), mapOptions);
    map.setTilt(50);
        
    // Multiple markers location, latitude, and longitude
    var markers = [
        <%  while(rs.next()){
                      String mdname = rs.getString("mdname");
                      String lat = rs.getString("lat");
                      String lon = rs.getString("lon");
//                      double lat = rs.getDouble("lat");
//                      double lon = rs.getDouble("lon");
                      out.print("['"+mdname+"', '"+lat+"', '"+lon+"'],");
                  } %> 
    ];
                        
    // Info window content
    var infoWindowContent = [
        <%  while(ss.next()){  %>
                ['<div class="info_content ">' +               
                    '<div class="col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12" style="background-color: white; ">'+
                     '<div id="slider-animation" class="carousel slide" data-ride="carousel">'+
                       '<ul class="carousel-indicators">'+
                            '<li data-target="#slider-animation" data-slide-to="0" class="active"></li>'+                            
                      '</ul>'+
                   '<div class="carousel-inner">'+
                    '<div class="carousel-item active">'+
                      '<img src="images/<%=ss.getString("fileName")%>"style="height: 200px; width: 100%; background-color: black"   id="mapImage">'+
                   ' </div>'+
                  '</div>'+
                  '<a class="carousel-control-prev" href="#slider-animation" data-slide="prev">'+
                    '<span class="carousel-control-prev-icon"></span>'+
                  '</a>'+
                  '<a class="carousel-control-next" href="#slider-animation" data-slide="next">'+
                   ' <span class="carousel-control-next-icon"></span>'+
                 ' </a>'+
                 '</div>'+              
            '</div>'+           
                '<h5 class="info_location_name"><%=ss.getString("mdname")%></h5> ' +
                 " <button type='submit' name='htName' value='<%=ss.getInt("id")%>' id='view' class='btn btn-xs btn-primary pull-left'>View</button>"+'</div>'],
        <% }  }catch(Exception e1){ out.print(e1);   }  %>
    ];  
    
    // Add multiple markers to map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Place each marker on the map  
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            icon: "images/map.png",
            title: markers[i][0]
        });
        
        // Add info window to marker    
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));

        // Center the map to fit all markers on the screen
        map.fitBounds(bounds);
    }

    // Set zoom level
    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(9);
        google.maps.event.removeListener(boundsListener);
    });
    
}

// Load initialize function
google.maps.event.addDomListener(window, 'load', initMap);
</script>

</form>
<style type="text/css">
  .gm-style-iw {
  width: 300px; 
  max-height: 400px;
}
.row.heading h2 {
    color: #fff;
    font-size: 52.52px;
    line-height: 95px;
    font-weight: 400;
    text-align: center;
    margin: 0 0 40px;
    padding-bottom: 20px;
    text-transform: uppercase;
}
ul{
  margin:0;
  padding:0;
  list-style:none;
}
.heading.heading-icon {
    display: block;
}
.padding-lg {
	display: block;
	padding-top: 60px;
	padding-bottom: 60px;
}
.practice-area.padding-lg {
    padding-bottom: 55px;
    padding-top: 55px;
}
.practice-area .inner{ 
     border:1px solid #999999; 
	 text-align:center; 
	 margin-bottom:28px; 
	 padding:40px 25px;
}
.our-webcoderskull .cnt-block:hover {
    box-shadow: 0px 0px 10px rgba(0,0,0,0.3);
    border: 0;
}
.practice-area .inner h3{ 
    color:#3c3c3c; 
	font-size:24px; 
	font-weight:500;
	font-family: 'Poppins', sans-serif;
	padding: 10px 0;
}
.practice-area .inner p{ 
    font-size:14px; 
	line-height:22px; 
	font-weight:400;
}
.practice-area .inner img{
	display:inline-block;
}


.our-webcoderskull{
  background: url("http://www.webcoderskull.com/img/right-sider-banner.png") no-repeat center top / cover;
  
}
.our-webcoderskull .cnt-block{ 
   float:left; 
   width:100%; 
   background:#fff; 
   padding:30px 20px; 
   text-align:center; 
   border:2px solid #d5d5d5;
   margin: 0 0 28px;
}
.our-webcoderskull .cnt-block figure{
   width:100%; 
   height:148px; 
   border-radius:100%; 
   display:inline-block;
   margin-bottom: 15px;
}
.our-webcoderskull .cnt-block img{ 
   width:148px; 
   height:148px; 
   border-radius:100%; 
}
.our-webcoderskull .cnt-block h3{ 
   color:#2a2a2a; 
   font-size:20px; 
   font-weight:500; 
   padding:6px 0;
   text-transform:uppercase;
}
.our-webcoderskull .cnt-block h3 a{
  text-decoration:none;
	color:#2a2a2a;
}
.our-webcoderskull .cnt-block h3 a:hover{
	color:#337ab7;
}
.our-webcoderskull .cnt-block p{ 
   color:#2a2a2a; 
   font-size:13px; 
   line-height:20px; 
   font-weight:400;
}
.our-webcoderskull .cnt-block .follow-us{
	margin:20px 0 0;
}
.our-webcoderskull .cnt-block .follow-us li{ 
    display:inline-block; 
	width:auto; 
	margin:0 5px;
}
.our-webcoderskull .cnt-block .follow-us li .fa{ 
   font-size:24px; 
   color:#767676;
}
.our-webcoderskull .cnt-block .follow-us li .fa:hover{ 
   color:#025a8e;
}

</style>
