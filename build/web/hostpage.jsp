<%-- 
    Document   : hostpage
    Created on : Mar 28, 2020, 1:12:36 PM
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
                  String select = "SELECT mdname,fileName,email,address,number FROM signup where uname ='" + uu + "' ";
                  ResultSet rs = st.executeQuery(select);
                  while(rs.next()){
                      String mdname = rs.getString("mdname");
                      String fileName = rs.getString("fileName");
                      String email = rs.getString("email");
                      String address = rs.getString("address");
                      String number = rs.getString("number");
                  
             %>
             <br>  <br>  <br>  <br>
    <div class="row justify-content-center">
        <div class="col-12 col-sm-12 col-md-3 col-lg-3" >
             <div class="">
                <img src="images/<%=fileName%>" width="200" height="200">
                
            </div> <br>
            <label><%=mdname%> </label><br>
            <label>Email: <%=email%> </label><br>
            <label>Address:  <%=address%>  </label><br>
            <label>Mo-number:  <%=number%>  </label>
            
        </div>
                    <div class="col-12 col-sm-12 col-md-1 col-lg-1" style="border-left: 1px solid #d0d0d0">
          
            
        </div>
             <%
                 }
}catch(Exception e1){
out.print(e1);
}
                 %>
        <div class="col-12 col-sm-12 col-md-8 col-lg-8" >
          <%    try{ 
              
              String uu = session.getAttribute("uname").toString();
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
              Statement st = con.createStatement();
              String select = "SELECT * FROM doctor where uname ='" + uu + "' ";
              ResultSet rs = st.executeQuery(select);
                 while(rs.next()){
                        String mdname = rs.getString("doctorName");
                        String fileName = rs.getString("imageName");
                        String title = rs.getString("title");
                   
          %>
          <div class="row" style="border: 1px solid #d0d0d0">
              <div class="col-4 col-sm-4 col-md-4 col-lg-4" >
                  <img src="doctorImages/<%=fileName%>" width="100" height="100"> 
              </div>
              <div class="col-5 col-sm-5 col-md-4 col-lg-4" ><br>
                  <label><%=mdname%></label>
              </div>
              <div class="col-4 col-sm-4 col-md-4 col-lg-4" ><br>
                 <label><%=title%></label>
              </div>

          </div><br>
          <% }  %>  <%
}catch(Exception e1){
out.print(e1);
}
                 %>
        </div>
        
    </div>
    </div>
</div>
