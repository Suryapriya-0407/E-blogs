<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/cl4.jpeg");
	width: 100%;
	height: 95vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register page</title>


<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">

				<div class="card mt-3	">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-2x " aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>
					
					
					<% 
					String regMsg=(String)session.getAttribute("reg_success");
					 if(regMsg != null)
					 {%>
						 <div class="alert alert-success" role="alert"><%=regMsg%>Login<a href="login.jsp">Click Here</a></div> 
					 <% 
					 session.removeAttribute("reg_success");
					 }
					
					%>	
						
				<% 
					String FailedMsg=(String)session.getAttribute("failed_msg");
					 if(FailedMsg != null)
					 { %>
						 <div class="alert alert-danger" role="alert"><%=FailedMsg %></div>
					 <%
					 session.removeAttribute("failed_msg");
					 }%>	

					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname"
									placeholder="Enter full name">

							</div>
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
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-dark mt-0">
<p class="text-center text-white">Designed and Developed by Pooja Bhavsar</p>

<p class="text-center text-white">For any queries connect with Pooja at poojabbh@gmail.com</p>

</div>
</body>
</html>