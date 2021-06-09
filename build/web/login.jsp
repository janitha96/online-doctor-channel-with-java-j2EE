<%-- 
    Document   : login
    Created on : Mar 24, 2020, 11:38:29 PM
    Author     : lahiru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-11 col-sm-12 col-md-8 col-lg-8 " id="logSubHome">
                    <br><br><br><br>
			<form action="loginInc" method="POST">
				<div class="row row justify-content-center">
				<div class="col-11 col-sm-12 col-md-7 col-lg-7" style=" border: 1px solid #c6cacc; height: 400px; border-radius: 0px;"><br>
                                    <h5 id="logInText">Log In</h5>
			
					
						<label id="logInTextFields">User Name</label>
						<input type="text" name="uname" class="form-control"  id="user">
						<label id="logInTextFields">Password</label>

						<input type="password" name="pwd" class="form-control"  id="pass">
						
						<a href="resetPassword.php" id="logingPageText">Forgot my password.</a><br><br>
						<button type="submit" name="submit-login" class="btn btn-link" id="loginButton">Log In</button>
						<div class="checkbox">
						  <label id="logingPageText"><input type="checkbox" name="remember" value="1">Remember Me</label>
						</div>
						<p id="logingPageText">If you don not have an account please register <a href="signup.jsp">here</a></p>
						
						
				
			</div>
		</div>
			</form>
		</div>
		</div>
		</div>
