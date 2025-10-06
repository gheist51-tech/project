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

public class Contact_us extends HttpServlet{

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String Name = request.getParameter("Name");
        String email = request.getParameter("email");	
    	String subject = request.getParameter("subject");
    	String message = request.getParameter("message");
    	try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Contact_us","root","root");
			PreparedStatement ba= con.prepareStatement("insert into All_four values(?,?,?,?)");
			ba.setString(1,Name);
			ba.setString(2,email);
			ba.setString(3,subject);
			ba.setString(4, message);
			
			int i=ba.executeUpdate();
			if(i!=0) {
				response.sendRedirect("Sucess.jsp");
    	}else {
    		response.sendRedirect("Unsucess.jsp");
		}
    	}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
