package com.midtree.web.staff;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.StaffDAOImple;
import Exceptions.BikeDAOExceptions;

public class staffLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = (String) request.getAttribute("userName");
		String password = (String) request.getAttribute("password");

		HttpSession session = request.getSession();

		try {
			boolean flag = new StaffDAOImple().checkStaff(userName, password);
			if (flag) {
				session.setAttribute("un", userName);
				response.sendRedirect("staffWelcome.jsp");
			} else {
				response.sendRedirect("index.jsp");
			}
		} catch (BikeDAOExceptions e) {

			e.printStackTrace();
		}

	}

}
