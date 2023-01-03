<%@ page  import="com.User.Post" language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%
com.User.UserDetails user3 = (com.User.UserDetails) session.getAttribute("userD");

if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login_error", "Please Login..");
}
%>

	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Blogs</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<%
		String updateMsg = (String)session.getAttribute("UpdateMsg");
	
	   if(updateMsg !=null)
	   {%>
		   <div class="alert alert-success" role="alert"><%= updateMsg%></div>
	   <%
	   session.removeAttribute("UpdateMsg");
	   }
	
	
	
	%>
	
	<%
		String delMsg = (String)session.getAttribute("DeleteMsg");
	
	   if(delMsg !=null)
	   {%>
		   <div class="alert alert-success" role="alert"><%= delMsg%></div>
	   <%
	   session.removeAttribute("DeleteMsg");
	   }
	
	
	
	%>
	
	

	<div class="container"></div>
	<h2 class="text-center">All Blogs:</h2>

	<div class="row">
		<div class="col-md-12">
		
		<%
                   if(user3 !=null)
                   {
                	   com.DAO.PostDAO ob=  new com.DAO.PostDAO(com.Db.DBConnect.getConn());
                       java.util.List<Post> post   =ob.getData(user3.getId());
                 
                        for(Post po : post)
                        {%>
                        	
                        		<div class="card mt-3">

				<img alt="" src="img/bg1.jpg" class="card-img-top mt-2 mx-auto"
					style="max-width: 150px;">

                <div class="card-body p-4">
                
                
                
                   <h5 class="card-title "><%=po.getTitle() %></h5>
                  <%=po.getContent() %>.
                   
                   <p>
                      <b class="text-success">Published By: <%=user3.getName() %></b></br>
                      <b class="text-primary"></b>
                   
                   </p>
                   
                   <p>
                   <b class="text-success">Published Date: <%=po.getPdate() %></b></br>
                      <b class="text-success"></b>
                   
                   </p>
                   	<div class="container text-center mt-2">
                   	   <a href="deleteServlet?note_id=<%=po.getId() %>" class="btn btn-danger">Delete</a>
                       
                        <a href="edit.jsp?note_id=<%=po.getId() %>" class="btn btn-primary">Edit</a>
                  
                   	</div>
                      </div>

                  </div>
                        	
                        <%}
                   
                   }
                %>
		


		</div>

	</div>

</body>
</html>