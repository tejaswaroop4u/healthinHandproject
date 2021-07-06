package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.*;

@WebServlet("/login")
public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		UserDao dao=new UserDao();
		HttpSession session=request.getSession();
		try {
			if(dao.checkCredentials(username,password)) {
				session.setAttribute("username", username);
				response.sendRedirect("home.jsp");
			}
			else {
				session.setAttribute("page", "login.jsp");
				session.setAttribute("message", "Invalid Credentails");
				response.sendRedirect("message.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("login.jsp");
			e.printStackTrace();
		}
	}
}
