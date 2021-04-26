package com.midtree.web.student;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.StudentDaoImple;
import Exceptions.BikeDAOExceptions;

public class studentLogin extends HttpServlet {
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
			boolean flag = new StudentDaoImple().checkStudent(userName, password);
			if (flag) {
				session.setAttribute("un", userName);
				response.sendRedirect("studentWelcome.jsp");
			} else {
				response.sendRedirect("index.jsp");
			}
		} catch (BikeDAOExceptions e) {

			e.printStackTrace();
		}

	}

}
