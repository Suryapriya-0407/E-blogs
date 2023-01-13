<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.back-img {
	background: url("img/cl4.jpeg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>




<%@include file="all_component/allcss.jsp"%>
</head>

<body>


	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">

				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-circle fa-3x" aria-hidden="true"></i>
						<h4>Login Page</h4>
					</div>

					<%
                      String invalidMsg= (String)session.getAttribute("login_failed");
                 
                      if(invalidMsg != null)
                      {%>
                    	  <div class="alert alert-danger" role="alert"><%= invalidMsg%></div>
                      <%
                      session.removeAttribute("login_failed");
                      }
                       
                      %>
                  
                     <%
                       String withouitLogin= (String)session.getAttribute("login_error");
                        if(withouitLogin !=null)
                        {%>
                        
                          <div class="alert alert-danger" role="alert"><%= withouitLogin%></div>	
                       <%
                       session.removeAttribute("login_error");
                        }
                     %>

      <%
      
      String lgMsg= (String)session.getAttribute("logoutMsg");
      if(lgMsg!=null)
      {%>
    	    <div class="alert alert-success" role="alert"><%=lgMsg%></div>	
    	  
      <%
      session.removeAttribute("logoutMsg");
      }
      %>

					<div class="card-body">
						<form action="loginServlet" method="post">

							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail"
									placeholder="Enter email"> <small id="emailHelp"
									class="form-text text-muted"></small>

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword" placeholder="Password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	
	
	



</body>
</html>

