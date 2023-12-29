package com.tech.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String check = req.getParameter("check");
		PrintWriter out = resp.getWriter();
		
		if(check==null) {
			out.println("Box not checked");
		}else {
			
			String name = req.getParameter("user_name");
			String email = req.getParameter("user_email");
			String password = req.getParameter("user_password");
			String gender = req.getParameter("gender");
			String about = req.getParameter("about");
			Timestamp time = new Timestamp(System.currentTimeMillis());
			
			UserDao userDao = new UserDao(ConnectionProvider.getConnection());
			User user = new User(name,email,password,gender,about,time);
			int res = userDao.saveUser(user);
			
			if(res>0) {
				out.println("done");
			}else {
				out.println("Error");
			}
			
		}
	}
}
