package com.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/addContact")
public class AddContact extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int userId=Integer. parseInt(req.getParameter("userid"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phno= req.getParameter("phno");
		String  about=req.getParameter("about");
		
		
		
	}

}
