<%-- 
    Document   : viewCenter
    Created on : Mar 29, 2020, 2:25:15 PM
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
                    String name = request.getParameter("htName");
                 
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
                  Statement st = con.createStatement();
                  String select = "SELECT fullName,uname,mdname,fileName,email,address,number FROM signup where id ='" + name + "' ";
                  ResultSet rs = st.executeQuery(select);
                  while(rs.next()){
                     session.setAttribute("name", rs.getString("uname"));
                      String mdname = rs.getString("mdname");
                      String fileName = rs.getString("fileName");
                      String email = rs.getString("email");
                      String address = rs.getString("address");
                      String number = rs.getString("number");
                       String fullname = rs.getString("fullName");
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
            <label>Owner:  <%=fullname%>  </label>
             <form action="chanelMe" method="post">
           <div class="input-group mb-3">
              
          <input type="text" class="form-control" id="signupTextFields"  placeholder="Full Name" name="fullname" required>
           </div> 
           
            <div class="input-group mb-3">

          <input type="text" class="form-control" id="signupTextFields"  placeholder="Email" name="email" required>
           </div> 
           
            <div class="input-group mb-3">

          <input type="text" class="form-control" id="signupTextFields"  placeholder="Contact Number" name="conNum" required>
           </div> 
           
           
            <div class="input-group mb-3">

          <input type="text" class="form-control" id="signupTextFields"  placeholder="Doctor Code" name="dcode" required>
           </div> 
           <div class="funkyradio">
           <div class="row">
               <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                   <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio1"value="Sunday" />
            <label for="radio1">Sunday</label>
        </div>
               </div>
              <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                   <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio2" value="Monday"/>
            <label for="radio2">Monday</label>
        </div>  
               </div>
           </div>
           
                      <div class="row">
               <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                           <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio3" value="Tuesday" />
            <label for="radio3">Tuesday</label>
        </div>
               </div>
              <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                           <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio4" value="Wednesday"/>
            <label for="radio4">Wednesday</label>
        </div>
               </div>
           </div>
           
                      <div class="row">
               <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                           <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio5" value="Thursday"/>
            <label for="radio5">Thursday</label>
        </div>
               </div>
              <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                           <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio6" value="Friday"/>
            <label for="radio6">Friday</label>
        </div>
               </div>
           </div>
                      <div class="row">
               <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                           <div class="funkyradio-success">
            <input type="radio" name="radio" id="radio6" value="Sunday"/>
            <label for="radio6">Sunday</label>
        </div>
               </div>
              <div class="col-6 col-sm-6 col-md-6 col-lg-6">
                   
               </div>
           </div>
        </div>

          <div class="input-group mb-3">

          <input type="text" class="form-control" id="signupTextFields"  placeholder="Chanel Time" name="time" required>
           </div> 
                 <% String dname =session.getAttribute("dname").toString();
                 String fileName2 =session.getAttribute("fileName").toString();
                 String imagePath =session.getAttribute("imagePath").toString();%>
                 <input type="hidden"  name="mdname" style="color: black;"  value="<%=mdname%>"/>
                 <input type="hidden"  name="dname" style="color: black;"  value="<%=dname%>"/>
                 <input type="hidden"  name="imagename" style="color: black;"  value="<%=fileName2%>"/>
                 <input type="hidden"  name="imagepath" style="color: black;"  value="<%=imagePath%>"/>
            <button type='submit' name='submit'  id='view' class='btn btn-xs btn-primary pull-right'>Channel</button>
             </form>
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
              
              String uu = session.getAttribute("name").toString();
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
              Statement st = con.createStatement();
              String select = "SELECT * FROM doctor where uname ='" + uu + "' ";
              ResultSet rs = st.executeQuery(select);
                 while(rs.next()){
                      String id = rs.getString("id");
                        String dname = rs.getString("doctorName");
                        String fileName = rs.getString("imageName");
                        String imagePath = rs.getString("imagePath");
                        String title = rs.getString("title");
                        String mon = rs.getString("monday");
                        String tue = rs.getString("tuesday");
                        String wed = rs.getString("wednesday");
                        String thu = rs.getString("thursday");
                        String fri = rs.getString("friday");
                        String sat = rs.getString("saturday");
                        String sun = rs.getString("sunday");
                        
                         session.setAttribute("dname",dname);
                         session.setAttribute("fileName",fileName);
                         session.setAttribute("imagePath",imagePath);
                   
          %>
          <div class="row" style="border: 1px solid #d0d0d0;">
              <div class="col-3 col-sm-3 col-md-3 col-lg-2">
                  <img src="doctorImages/<%=fileName%>" width="100" height="100"> 
              </div>
              <div class="col-2 col-sm-2 col-md-1 col-lg-2" ><br>
                  <label>d code:00<%=id%></label>
              </div>
              <div class="col-3 col-sm-3 col-md-4 col-lg-4" ><br>
                  <label><%=dname%></label>
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
        
    </div>
    </div>
</div>
        <style>
/*    @import('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css') */
input[type="text"]{
    height: 30px;
    font-size: 13px;
}
label{
    font-size: 13px;
}

.funkyradio div {
  clear: both;
  overflow: hidden;
}

.funkyradio label {
  width: 100%;
  border-radius: 3px;
  border: 1px solid #D1D3D4;
  font-weight: normal;
}

.funkyradio input[type="radio"]:empty,
.funkyradio input[type="checkbox"]:empty {
  display: none;
}

.funkyradio input[type="radio"]:empty ~ label,
.funkyradio input[type="checkbox"]:empty ~ label {
  position: relative;
  line-height: 30px;
  text-indent: 3em;
 
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}

.funkyradio input[type="radio"]:empty ~ label:before,
.funkyradio input[type="checkbox"]:empty ~ label:before {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  content: '';
  width: 2.5em;
  background: #D1D3D4;
  border-radius: 3px 0 0 3px;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label {
  color: #888;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label:before,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #C2C2C2;
}

.funkyradio input[type="radio"]:checked ~ label,
.funkyradio input[type="checkbox"]:checked ~ label {
  color: #777;
}

.funkyradio input[type="radio"]:checked ~ label:before,
.funkyradio input[type="checkbox"]:checked ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #333;
  background-color: #ccc;
}

.funkyradio input[type="radio"]:focus ~ label:before,
.funkyradio input[type="checkbox"]:focus ~ label:before {
  box-shadow: 0 0 0 3px #999;
}

.funkyradio-default input[type="radio"]:checked ~ label:before,
.funkyradio-default input[type="checkbox"]:checked ~ label:before {
  color: #333;
  background-color: #ccc;
}

.funkyradio-primary input[type="radio"]:checked ~ label:before,
.funkyradio-primary input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #337ab7;
}

.funkyradio-success input[type="radio"]:checked ~ label:before,
.funkyradio-success input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5cb85c;
}

.funkyradio-danger input[type="radio"]:checked ~ label:before,
.funkyradio-danger input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #d9534f;
}

.funkyradio-warning input[type="radio"]:checked ~ label:before,
.funkyradio-warning input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #f0ad4e;
}

.funkyradio-info input[type="radio"]:checked ~ label:before,
.funkyradio-info input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5bc0de;
}

/* SCSS STYLES */
/*
.funkyradio {

    div {
        clear: both;
        overflow: hidden;
    }

    label {
        width: 100%;
        border-radius: 3px;
        border: 1px solid #D1D3D4;
        font-weight: normal;
    }

    input[type="radio"],
    input[type="checkbox"] {

        &:empty {
            display: none;

            ~ label {
                position: relative;
                line-height: 2.5em;
                text-indent: 3.25em;
                margin-top: 2em;
                cursor: pointer;
                user-select: none;

                &:before {
                    position: absolute;
                    display: block;
                    top: 0;
                    bottom: 0;
                    left: 0;
                    content: '';
                    width: 2.5em;
                    background: #D1D3D4;
                    border-radius: 3px 0 0 3px;
                }
            }
        }

        &:hover:not(:checked) ~ label {
            color: #888;

            &:before {
                content: '\2714';
                text-indent: .9em;
                color: #C2C2C2;
            }
        }

        &:checked ~ label {
            color: #777;

            &:before {
                content: '\2714';
                text-indent: .9em;
                color: #333;
                background-color: #ccc;
            }
        }

        &:focus ~ label:before {
            box-shadow: 0 0 0 3px #999;
        }
    }

    &-default {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #333;
                background-color: #ccc;
            }
        }
    }

    &-primary {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #337ab7;
            }
        }
    }

    &-success {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #5cb85c;
            }
        }
    }

    &-danger {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #d9534f;
            }
        }
    }

    &-warning {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #f0ad4e;
            }
        }
    }

    &-info {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #5bc0de;
            }
        }
    }
}
*/

        </style>