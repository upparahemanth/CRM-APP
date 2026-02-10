package com.crm.controller;

import java.io.IOException;

import com.crm.dao.UserDAO;
import com.crm.dao.UserDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Delete")
public class DeleteServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int UserId=Integer.parseInt(req.getParameter("uid"));
		UserDAO udao=new UserDAOImpl();
		boolean isDeleted=udao.deleteuserById(UserId);
		if(isDeleted) {
			resp.sendRedirect("Dashboard");
		}
	}
}


//this is a CrmApp