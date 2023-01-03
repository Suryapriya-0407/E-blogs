package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.PostDAO;
import com.Db.DBConnect;
import com.User.Post;

@WebServlet("/AddBlogServlet")
public class AddBlogServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	   int uid= Integer.parseInt(request.getParameter("uid"));
	   String title= request.getParameter("title");
	   String content= request.getParameter("content");

	  PostDAO dao =new  PostDAO(DBConnect.getConn());
	   boolean f=dao.AddBlog(title, content, uid);
	   
	   if(f)
	   {
		  System.out.println("data insert successfully..");
		  response.sendRedirect("showBlog.jsp");
	   }
	   else
	   {
		   System.out.println("data not inserted..");
	   }
	   
	   
	   
	}

}
