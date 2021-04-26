package com.midtree.web.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AdminDAOImple;

public class loginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = (String) request.getAttribute("userName");
		String password = (String) request.getAttribute("password");

		boolean flag = false;

		try {
			flag = new AdminDAOImple().checkadmin(userName, password);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		if (flag) {
			response.sendRedirect("adminWelcome.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}

	}

}
