package com.Login_Data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Forget_page extends HttpServlet{
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String Email = request.getParameter("Email");
		String New_password = request.getParameter("New_password");
		String Confirm_password = request.getParameter("Confirm_password");
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_register_forget_CenturaHM","root","root");
			PreparedStatement pst = con.prepareStatement("UPDATE All_three SET password = ? WHERE email = ?");
			pst.setString(1,New_password);
			pst.setString(2,Email);
		//	pst.setString(3,Confirm_password);
			
			
			int k = pst.executeUpdate();
			if(k!=0) {
				response.sendRedirect("Home_Page.jsp");
			}else {
				response.sendRedirect("Wrong_info.jsp");
			}   						    
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
