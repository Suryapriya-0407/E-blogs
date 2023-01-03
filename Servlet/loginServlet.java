package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	
	   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   String email=request.getParameter("uemail");
			 String password=request.getParameter("upassword");
			 
			 UserDetails u=new UserDetails();
			 u.setEmail(email);
			 u.setPassword(password);
			 
			 UserDAO dao=new UserDAO(DBConnect.getConn());
			 UserDetails user= dao.loginUser(u);
			 
			 
			 if(user != null)
			 {
				 HttpSession session = request.getSession();
				 session.setAttribute("userD",user);  //KEY,VALUE
				 response.sendRedirect("home.jsp");
			 }
			 else
			 {
				 HttpSession session = request.getSession();
				 session.setAttribute("login_failed","Invalid UserName and Password"); 
				 response.sendRedirect("login.jsp");
				 
			 }
	   }

}
