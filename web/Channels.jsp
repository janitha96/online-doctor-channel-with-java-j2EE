<%-- 
    Document   : Channels
    Created on : May 6, 2020, 11:48:38 AM
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
    <div class="row ">
                 
        <div class="col-12 col-sm-12 col-md-8 col-lg-4" >
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
                        String medicalcentername = rs.getString("medicalcentername");
                        session.setAttribute("medicalcenter", medicalcentername);
                   
          %>  
          <div class="row" style="border: 1px solid #d0d0d0;" >
        
              <div class="col-3 col-sm-3 col-md-3 col-lg-5">
                  <img src="doctorImages/<%=fileName%>" width="100" height="100"> 
              </div>

              <div class="col-3 col-sm-3 col-md-4 col-lg-5" ><br>
                  <label><%=mdname%></label>
              </div> 
          </div><br>
                        <% }
}catch(Exception e1){
out.print(e1);
}                        
                      %>
        </div>

     
            <div class="col-12 col-sm-12 col-md-3 col-lg-2" >
             <form action="Channels.jsp" method="post">

                <input type="text"  class="form-control" id="signupTextFields" placeholder="D name"  name="dname" ><br>              
                        <button type="submit" name="submitdoctor" class="btn btn-link" id="loginButton">Search</button>     
                        <br> <br>
                         <input type="text"  class="form-control" id="signupTextFields" placeholder="Patient name"  name="pname" ><br>              
                        <button type="submit" name="submitpatient" class="btn btn-link" id="loginButton">Search</button>    
            </form>
            
           </div>
           <div class="col-12 col-sm-12 col-md-3 col-lg-5" >
               <% 
                   if (request.getParameter("submitdoctor") != null) { 
                        String dname = request.getParameter("dname");
                     String medicalcenter = session.getAttribute("medicalcenter").toString();
                    try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
                  Statement st = con.createStatement();
                  String select = "SELECT name,conNum,day,time FROM chanel WHERE mdname='" + medicalcenter + "' AND dname LIKE '%" + dname + "%' ";
                  ResultSet rs = st.executeQuery(select); 
                   while(rs.next()){ 
               String name = rs.getString("name");
               String conNum = rs.getString("conNum");
               String day = rs.getString("day");
               String time = rs.getString("time");
               // int conNum=rs.getInt("conNum");
              %>
           
                      <table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Mo-num</th>
      <th scope="col">day</th>
      <th scope="col">Time</th>

    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><%=name%></th>
      <td><%=conNum%></td>
      <td><%=day%></td>
      <td><%=time%></td>
    
    </tr>
   
  </tbody>
</table>
                
              <% }} catch(Exception e1){out.print(e1);} } %>  
              
              
              
              
              
           <% 
                   if (request.getParameter("submitpatient") != null) { 
                        String pname = request.getParameter("pname");
                     String medicalcenter = session.getAttribute("medicalcenter").toString();
                    try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
                  Statement st = con.createStatement();
                  String select = "SELECT dname,conNum,day,time FROM chanel WHERE mdname='" + medicalcenter + "' AND name LIKE '%" + pname + "%' ";
                  ResultSet rs = st.executeQuery(select); 
                   while(rs.next()){ 
               String dname = rs.getString("dname");
               String conNum = rs.getString("conNum");
               String day = rs.getString("day");
               String time = rs.getString("time");
               // int conNum=rs.getInt("conNum");
              %>
           
                      <table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Mo-num</th>
      <th scope="col">day</th>
      <th scope="col">Time</th>

    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><%=dname%></th>
      <td><%=conNum%></td>
      <td><%=day%></td>
      <td><%=time%></td>
    
    </tr>
   
  </tbody>
</table>
                
              <% }} catch(Exception e1){out.print(e1);} } %>  
         
           </div>
    </div>
    </div>
</div>




