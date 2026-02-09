package com.crm.controller;

import java.io.IOException;


import com.crm.dao.UserDAO;
import com.crm.dao.UserDAOImpl;
import com.crm.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Upadte")
public class UpdateServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int userId = Integer.parseInt(req.getParameter("uid"));
		String userName = req.getParameter("uname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		User user = new User(userId, userName, email, password, role);

		UserDAO udao = new UserDAOImpl();
		boolean updateduser = udao.updateuser(user);
		if (updateduser) {
			resp.sendRedirect("Dashboard");
		}
	

	}

}
