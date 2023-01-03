<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
com.User.UserDetails user2 = (com.User.UserDetails) session.getAttribute("userD");

if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login_error", "Please Login..");
}
%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>


<div class="conatiner-fluid">
<%@include file="all_component/navbar.jsp" %>

<div class="card py-5">
<div class="card-body text-center" >
<img alt=" " src="img/blog1.jpg" class="img-fluid mx-auto" style="max-width: 300px;">

<h1>START TO WRITE YOUR BLOGS</h1>
<a href="addBlog.jsp" class="btn btn-outline-primary my-3">Start Here</a>
</div>


</div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>