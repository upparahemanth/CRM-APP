package com.crm.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.crm.dao.UserDAOImpl;
import com.crm.dao.UserDAO;
import com.crm.dto.User;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int userId = Integer.parseInt(req.getParameter("uid"));
		String userName = req.getParameter("uname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		User user = new User(userId, userName, email, password, "Customer");
		UserDAO udao = new UserDAOImpl();
		boolean isRegisterd = udao.registerUser(user);
		if (isRegisterd) {
			resp.sendRedirect("Login.jsp");
		}

	}
}


//this is a CrmApp