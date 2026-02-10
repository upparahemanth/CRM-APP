package com.crm.controller;

import java.io.IOException;

import com.crm.dao.UserDAO;
import com.crm.dao.UserDAOImpl;
import com.crm.dto.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddProducts")
public class AddProductServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		int pid=Integer.parseInt(req.getParameter("pid"));
		String pname=req.getParameter("pname");
		double price=Double.parseDouble(req.getParameter("price"));
		int quantity=Integer.parseInt(req.getParameter("quantity"));
		String url=req.getParameter("url");
		Product product=new Product(pid, pname, price, quantity, url);
		UserDAO udao = new UserDAOImpl();
		boolean isAdded = udao.addProducts(product);
		if (isAdded) {
			resp.sendRedirect("Product");
		}
		
	}
}
