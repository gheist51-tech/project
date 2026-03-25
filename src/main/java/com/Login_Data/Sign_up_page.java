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

public class Sign_up_page extends HttpServlet {
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String First_Name = request.getParameter("First_Name");
		String Last_Name = request.getParameter("Last_Name");
		String Email = request.getParameter("Email");
		String Number = request.getParameter("Number");
		String Password = request.getParameter("Password");
		String username = request.getParameter("username");
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_register_forget_CenturaHM","root","root");
			PreparedStatement ps= con.prepareStatement("insert into All_three values(?,?,?,?,?,?)");
			ps.setString(1,First_Name);
			ps.setString(2,Last_Name);
			ps.setString(3,username);
			ps.setString(4, Email);
			ps.setString(5, Number);
			ps.setString(6, Password);
			
			int i=ps.executeUpdate();
			if(i!=0) {
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
