<%-- 
    Document   : signup
    Created on : Mar 24, 2020, 11:53:34 PM
    Author     : lahiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<div class="container-fluid">
    	<div class="row justify-content-center">          
            <div class="col-11 col-sm-12 col-md-8 col-lg-8 " id="signSubHome">
                <form action="signupInc" method="POST" enctype="multipart/form-data">
                    <h4 class="text-center">Register Here..</h4><br>
                <div class="row" style="background-color: white; border: 1px solid #c6cacc; height: 730px;">
                   
                    <div class="col-12 col-sm-12 col-md-6 col-lg-5">
                         <br>
                         <div class="input-group mb-3">
                        <label class="newbtn1">
                            <img id="blah1" src="http://placehold.it/120x120" >
                            <input id="pic1" class='pis' onchange="readURL1(this);" type="file" name="file">
                          </label>
                         </div>
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                    <input type="text" class="form-control" id="signupTextFields"  placeholder="Full Name" name="fullname" required>
                            </div>

                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                                 <input type="text" class="form-control" id="signupTextFields"  placeholder="User Name" name="uname" required>
                            </div>
                             <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                    <input type="text" class="form-control" id="signupTextFields"  placeholder="Medical Center Name" name="mdname" required>
                            </div>
                                                      <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                    <input type="text" class="form-control" id="signupTextFields"  placeholder="Contact Numver" name="number" required>
                            </div>
                                                      <div class="input-group mb-3">
                             
                                                          <textarea name="add" placeholder="Medical center address" cols="50" rows="6"  required></textarea>
                                   
                            </div>
                                                      <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
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
                                                 <div class="input-group mb-3">
                                <div class="input-group-append">
                                                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                </div>
                                                <input type="text" class="form-control" id="signupTextFields"  placeholder=" Email Address" name="email" required>
                                        </div>
                                                <div class="input-group mb-3">
                                <div class="input-group-append">
                                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                            <input type="password" class="form-control" id="signupTextFields"  placeholder=" Password" name="pwd" required>
                                        </div>
                                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                            <input type="password" class="form-control" id="signupTextFields"  placeholder="Confirm Password" name="pwd_confirm" required>
                                        </div>
                                        <div class="form-group">
                                <div class="d-flex justify-content-center links">
                         <p style="color: black;">By creating an account you agree to our  <a href="#">Terms and Policy</a>
                </div>
 <input type="hidden" id="latitude" name="lat" style="color: black;"  value=""/>
                       <input type="hidden" id="longitude" name="lon" style="color: black;"  value=""/>

                                <button type="submit" name="submitsignup" class="btn btn-link" id="loginButton">Sign Up</button>

						
						
				<!-- </div> -->
			</div>
                    </div>
                     
                    <div class="col-12 col-sm-12 col-md-6 col-lg-7" id="map" style="background-color: black; border: 1px solid #c6cacc; height: 730px;">
                      <br>
                      
                    </div>
                </div>
                    
                 </form>
            </div>
                                

        </div>
</div>
<br>

<script>
 
 $('.newbtn1').bind("click" , function () {
        $('#pic1').click();
 });
 
  function readURL1(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah1')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
</script>
<script type="text/javascript">
 var map;
 function initMap() {
   var mapLayer = document.getElementById("map");
   var centerCoordinates = new google.maps.LatLng(37.6, -95.665);
   var defaultOptions = { center: centerCoordinates, zoom: 4 }

   map = new google.maps.Map(mapLayer, defaultOptions);
 }


          var geocoder = new google.maps.Geocoder();


    $(function(){
        initMap();
    });
 

  
    function geocodePosition(pos) {
      geocoder.geocode({
        latLng: pos
      }, function(responses) {
        if (responses && responses.length > 0) {
          updateMarkerAddress(responses[0].formatted_address);
        } else {
          updateMarkerAddress('Cannot determine address at this location.');
        }
      });
    }


    function updateMarkerPosition(latlng) {
    $('#latitude').val(latlng.lat());
    $('#longitude').val(latlng.lng());
    }



    function initMap() {

  if ("geolocation" in navigator){
    navigator.geolocation.getCurrentPosition(function(position){ 
      var currentLatitude = position.coords.latitude;
      var currentLongitude = position.coords.longitude;
           $(function(){
        myFunction();
    });
function myFunction() {
  document.getElementById("latitude").value =position.coords.latitude;
   document.getElementById("longitude").value =position.coords.longitude;
} 

        var latlng = new google.maps.LatLng(currentLatitude, currentLongitude);


        var myOptions = {
          zoom: 14,
          center: latlng,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }



        map = new google.maps.Map(document.getElementById("map"), myOptions);
//addd
        // map = new google.maps.Map(mapLayer, myOptions);
        marker = new google.maps.Marker({
                position: latlng,
                title: 'Sri lanka',
                map: map,
                draggable: true,
                //shadow: shadow,
              });
   
        geocodePosition(latlng);
     var searchBox= new google.maps.places.SearchBox(document.getElementById('logInTextBox'));

     //places change event on search box
     google.maps.event.addListener(searchBox,'places_changed',function(){

      //console.log(searchBox.getPlaces();)
      var places = searchBox.getPlaces();

      //boun
      var bounds= new google.maps.LatLngBounds();
      var i, place;

      for (i=0; place=places[i];i++) {
         //console.log(place geometry location)
         bounds.extend(place.geometry.location);
         marker.setPosition(place.geometry.location);
      }
      map.fitBounds(bounds);
      map.setZoom(15);
     });
   
      google.maps.event.addListener(marker, 'drag', function() {
        updateMarkerPosition(marker.getPosition());
      });
 
      google.maps.event.addListener(marker, 'dragend', function() {
        geocodePosition(marker.getPosition());
      });
        });


  }
     
    }
     
</script>


		