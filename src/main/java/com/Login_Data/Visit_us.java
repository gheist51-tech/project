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

public class Visit_us extends HttpServlet{
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String Full_Name = request.getParameter("Full_Name");
        String email = request.getParameter("email");	
    	String phone = request.getParameter("phone");
    	String subject = request.getParameter("subject");
    	String message = request.getParameter("message");
    	try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Visit_us","root","root");
			PreparedStatement ba= con.prepareStatement("insert into All_5 values(?,?,?,?,?)");
			ba.setString(1,Full_Name);
			ba.setString(2,email);
			ba.setString(3,phone);
			ba.setString(4, subject);
			ba.setString(5, message);
			int i=ba.executeUpdate();
			if(i!=0) {
				response.sendRedirect("Sucess.jsp");
    	}else {
    		response.sendRedirect("Unsucess.jsp");
		}
    	}catch(SQLException e) {
			e.printStackTrace();
		}
	}}
