<%-- 
    Document   : hostAdd
    Created on : Mar 28, 2020, 1:37:59 PM
    Author     : lahiru
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<div class="container-fluid">

    <div class="container">
        <% try{
                  String uu = session.getAttribute("uname").toString();
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
                  Statement st = con.createStatement();
                  String select = "SELECT fullName,mdname,fileName,email,address,number FROM signup where uname ='" + uu + "' ";
                  ResultSet rs = st.executeQuery(select);
                  while(rs.next()){
                      String mdname = rs.getString("mdname");
                      String fileName = rs.getString("fileName");
                      String email = rs.getString("email");
                      String address = rs.getString("address");
                      String number = rs.getString("number");
                      String name = rs.getString("fullName");
                  session.setAttribute("medicalcentername", mdname);
             %>
             <br>  <br>  <br>  <br>
    <div class="row justify-content-center">
        <div class="col-12 col-sm-12 col-md-3 col-lg-3">
            
            <div class="">
                <img src="images/<%=fileName%>" width="200" height="200">
                
            </div> <br>
            <label><%=mdname%> </label><br>
            <label>Email: <%=email%> </label><br>
            <label>Address:  <%=address%>  </label><br>
            <label>Mo-number:  <%=number%>  </label>
             <label>Owner:  <%=name%>  </label>
            
        </div>
            
             <%
                 }
}catch(Exception e1){
out.print(e1);
}
                 %>
        <div class="col-12 col-sm-12 col-md-9 col-lg-9" style="border-left: 1px solid #d0d0d0">
            <form action="hostAddInc" method="post" enctype="multipart/form-data">
                <label id="logInTextFields" style="color: black">Image</label> <br>
                        <div class="input-group mb-3">
                        <label class="newbtn">
                            <img id="blah" src="http://placehold.it/120x120" >
                            <input id="pic" class='pis' onchange="readURL(this);" type="file" name="file">
                          </label>
                         </div>
                  <label id="logInTextFields" style="color: black">Doctor Name</label> <br>
                            <div class="input-group mb-3">
                              
                                    <input type="text"  class="form-control" id="signupTextFields"  name="dname" required>
                            </div>
                             <label id="logInTextFields"  style="color: black">Title</label><br>
                            <div class="input-group mb-3">
                               
                                    <input type="text" class="form-control" id="signupTextFields"  name="ttle" required>
                            </div>
                             <label id="logInTextFields" style="color: black">Time</label> <br>
                <table class="table">
  <thead>
    <tr>
      <th scope="col">Sunday</th>
      <th scope="col">Monday</th>
      <th scope="col">Tuesday</th>
      <th scope="col">Wednesday</th>
       <th scope="col">Thursday</th>
      <th scope="col">Friday</th>
      <th scope="col">Saturday</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><input type="text"  class="form-control" id="signupTextFields"  name="sun" required></th>
      <td><input type="text"  class="form-control" id="signupTextFields"  name="mon" required></td>
      <td><input type="text"  class="form-control" id="signupTextFields"  name="tue" required></td>
      <td><input type="text"  class="form-control" id="signupTextFields"  name="wed" required></td>
      <td><input type="text"  class="form-control" id="signupTextFields"  name="thu" required></td>
      <td><input type="text"  class="form-control" id="signupTextFields"  name="fri" required></td>
      <td><input type="text"  class="form-control" id="signupTextFields"  name="sat" required></td>
    </tr>
   
  </tbody>
                </table>  <% String medicalcentername = session.getAttribute("medicalcentername").toString(); %>
          <input type="hidden"  name="uname" style="color: black;"  value="${uname}"/> 
          <input type="hidden"  name="medicalcentername" style="color: black;"  value="<%=medicalcentername%>"/>
    <button type="submit" name="submit" class="btn btn-link" id="loginButton">Submit</button>            
                
            </form>
        </div>
        
    </div>
    </div>
</div>
<script>
 
 $('.newbtn').bind("click" , function () {
        $('#pic').click();
 });
 
  function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
</script>