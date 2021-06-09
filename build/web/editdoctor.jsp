<%-- 
    Document   : editdoctor
    Created on : May 6, 2020, 12:38:11 AM
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

             <br>  <br>  <br>  <br>
    <div class="row justify-content-center">
    
                 
        <div class="col-12 col-sm-12 col-md-8 col-lg-8" >
          <%    try{ 
              
              String uu = session.getAttribute("uname").toString();
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
              Statement st = con.createStatement();
              String select = "SELECT * FROM doctor where uname ='" + uu + "' ";
              ResultSet rs = st.executeQuery(select);
                 while(rs.next()){
                     String id = rs.getString("id");
                        String mdname = rs.getString("doctorName");
                        String fileName = rs.getString("imageName");
                        String title = rs.getString("title");
                          String mon = rs.getString("monday");
                        String tue = rs.getString("tuesday");
                        String wed = rs.getString("wednesday");
                        String thu = rs.getString("thursday");
                        String fri = rs.getString("friday");
                        String sat = rs.getString("saturday");
                        String sun = rs.getString("sunday");
                   
          %>
          <div class="row" style="border: 1px solid #d0d0d0" >
     <div class="col-3 col-sm-3 col-md-3 col-lg-2">
                  <img src="doctorImages/<%=fileName%>" width="100" height="100"> 
              </div>
              <div class="col-2 col-sm-2 col-md-1 col-lg-2" ><br>
                  <label>d code:<%=id%></label>
              </div>
              <div class="col-3 col-sm-3 col-md-4 col-lg-4" ><br>
                  <label><%=mdname%></label>
              </div>
              <div class="col-4 col-sm-4 col-md-4 col-lg-4" ><br>
                 <label><%=title%></label>
              </div>
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
      <th scope="row"><%=sun%></th>
      <td><%=mon%></td>
      <td><%=tue%></td>
      <td><%=wed%></td>
      <td><%=thu%></td>
      <td><%=fri%></td>
      <td><%=sat%></td>
    </tr>
   
  </tbody>
</table>
          </div><br>
          <% }  %>  <%
}catch(Exception e1){
out.print(e1);
}
                 %>
        </div>
           <div class="col-12 col-sm-12 col-md-1 col-lg-1" style="border-right: 1px solid #d0d0d0">
          
            
        </div>
     
            <div class="col-12 col-sm-12 col-md-3 col-lg-3" >
            <form action="editdoc" method="post">

                <input type="text"  class="form-control" id="signupTextFields" placeholder="D code"  name="dcode" required><br>
      <input type="text"  class="form-control" id="signupTextFields" placeholder="sunday"  name="sun" required><br>
      <input type="text"  class="form-control" id="signupTextFields" placeholder="monday" name="mon" required><br>
      <input type="text"  class="form-control" id="signupTextFields" placeholder="tuesday" name="tue" required><br>
      <input type="text"  class="form-control" id="signupTextFields" placeholder="wednesday" name="wed" required><br>
      <input type="text"  class="form-control" id="signupTextFields" placeholder="thursday" name="thu" required><br>
      <input type="text"  class="form-control" id="signupTextFields" placeholder="friday" name="fri" required><br>
      <input type="text"  class="form-control" id="signupTextFields" placeholder="saturday" name="sat" required><br>

          <input type="hidden"  name="uname" style="color: black;"  value="${uname}"/>                                   
    <button type="submit" name="submit" class="btn btn-link" id="loginButton">edit</button>      
    <button type="reset" name="cancel" class="btn btn-link" id="loginButton">cancel</button>  
                
            </form>
            
        </div>
    </div>
    </div>
</div>



