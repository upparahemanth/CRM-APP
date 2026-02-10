package com.crm.controller;

import java.io.IOException;
import java.util.List;

import com.crm.dao.UserDAO;
import com.crm.dao.UserDAOImpl;
import com.crm.dto.Product;
import com.crm.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Product")
public class ProductServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAO udao=new UserDAOImpl();
		List<Product> plist = udao.getAllProducts();
		if (!plist.isEmpty()) {
			req.setAttribute("plist", plist);
			req.getRequestDispatcher("Products.jsp").forward(req, resp);
		}
	}
}
