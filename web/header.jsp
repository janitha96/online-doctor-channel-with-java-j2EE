<%-- 
    Document   : header
    Created on : Mar 24, 2020, 11:15:36 PM
    Author     : lahiru
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
        <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="main.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

    <title>Find a great hotel for your vacation.</title>
  
  
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDiMT1b7ENi3YVqQgLWyE0HPIXYcsz-dOY&callback=initMap">
</script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%  
            if(session.getAttribute("uname") != null){  %>

            
            <form action="logoutInc" method="post">
                    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <a class="navbar-brand" href="index.jsp" id="navText">Meet Doctor</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
           <li class="nav-item active ml-auto">
          <a class="nav-link" href="hostpage.jsp" id="navText"> View<span class="sr-only">(current)</span></a>
         
      </li>
        <li class="nav-item active ml-auto">
          <a class="nav-link" href="hostAdd.jsp" id="navText"> Add<span class="sr-only">(current)</span></a>
         
      </li>
      <li class="nav-item active ml-auto">
          <a class="nav-link" href="editdoctor.jsp" id="navText">Edit doctor<span class="sr-only">(current)</span></a>
         
      </li>
            <li class="nav-item active ml-auto">
          <a class="nav-link" href="Channels.jsp" id="navText">Channels<span class="sr-only">(current)</span></a>
         
      </li>
                <li class="nav-item">
                 <button class="btn btn-success btn-sm mr-sm-2" type="submit" id="log_button" name="submit-logout">Log out</button>
                 ${uname}
                </li>
      </ul>
  </div>
</nav>
            </form>
     
          <%  }else { %>
           
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <a class="navbar-brand" href="index.jsp" id="navText">Meet Doctor</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto mt-2 mt-lg-0">     
     <li class="nav-item active ml-auto">
          <a class="nav-link" href="login.jsp" id="navText">Login <span class="sr-only">(current)</span></a>
         
      </li>
          </ul>

  </div>
</nav>
          <%
            }
          %>


</body>
