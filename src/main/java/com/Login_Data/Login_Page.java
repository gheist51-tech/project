 package com.Login_Data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login_Page extends HttpServlet{
	
	   @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
	        String username = request.getParameter("userName");
	        String Email_address = request.getParameter("Email_address");	
	    	String Password = request.getParameter("Password");
	      
	    	try {
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_register_forget_CenturaHM","root","root");
				PreparedStatement ps= con.prepareStatement("SELECT * FROM All_three WHERE username = ? AND email = ? AND password = ?");
				ps.setString(1, username);
				ps.setString(2,Email_address);
				ps.setString(3, Password);
				
				ResultSet rs = ps.executeQuery();	
				if(rs.next()) {
					 User.getInstance().setUsername(Email_address);
					 response.sendRedirect("Home_Page.jsp");
				}else {
					response.sendRedirect("Wrong_info.jsp");
				}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
		public static ResultSet getProfileDetails() {
			try {
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_register_forget_CenturaHM","root","root");
					PreparedStatement ps= con.prepareStatement("select*from All_three where email=?");
					ps.setString(1,User.getInstance().getUsername());
					ResultSet rs = ps.executeQuery();
					return rs;
					
			}catch(SQLException e) {
				e.printStackTrace();
				return null;
			}
			
		}
}