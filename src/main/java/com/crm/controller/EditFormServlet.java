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

@WebServlet("/Edit")
public class EditFormServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
		int userId = Integer.parseInt(req.getParameter("uid"));
		UserDAO udao = new UserDAOImpl();
		User user = udao.getUserById(userId);
		if (user != null) {
			req.setAttribute("euser", user);
			req.getRequestDispatcher("Edit-Form.jsp").forward(req, resp);
		}

	}
}
