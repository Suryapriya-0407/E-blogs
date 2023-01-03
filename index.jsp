<%@ page import="java.sql.Connection" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img{
background:url("img/n5.jpeg");
width: 100%;
height: 80vh;
background-repeat:no-repeat;
background-size:cover;
}

</style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
	<%@include file="all_component/navbar.jsp" %>
	
	
	<div class="container-fluid back-img">
	<div class="text-center">
	
	

	
	<h1><i class="fa fa-file-text-o" aria-hidden="true"></i> E Blogs- Create Your Blogs Here</h1>
	<a href="login.jsp" class="btn btn-dark"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
	 <a href="register.jsp" class="btn btn-dark"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
	 </div>



</div>

<%@include file="all_component/footer.jsp" %>
</body>
</html>