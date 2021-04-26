package com.midtree.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionListener;

import DAO.StudentDaoImple;
import Exceptions.BikeDAOExceptions;
import model.Student;

/**
 * Servlet implementation class InsertStudent
 */
public class InsertStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		String access = request.getParameter("access");

		switch (access) {
		case "admin":
			request.setAttribute("userName", userName);
			request.setAttribute("password", password);
			RequestDispatcher rd = request.getRequestDispatcher("loginAdmin");
			rd.forward(request, response);
			break;
		case "staff":
			request.setAttribute("userName", userName);
			request.setAttribute("password", password);
			RequestDispatcher rdForStaff = request.getRequestDispatcher("staffLogin");
			rdForStaff.forward(request, response);
			break;

		case "student":
			request.setAttribute("userName", userName);
			request.setAttribute("password", password);
			RequestDispatcher rdForStudent = request.getRequestDispatcher("studentLogin");
			rdForStudent.forward(request, response);
			break;

		default:
			response.sendRedirect("index.jsp");
			break;
		}

	}

}
