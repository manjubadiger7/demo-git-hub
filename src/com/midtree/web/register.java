package com.midtree.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String zipcode = request.getParameter("zipcode");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		String access = request.getParameter("access");

		switch (access) {
//		case "admin":
//			request.setAttribute("name", name);
//			request.setAttribute("age", age);
//			request.setAttribute("email", email);
//			request.setAttribute("city", city);
//			request.setAttribute("state", state);
//			request.setAttribute("country", country);
//			request.setAttribute("zipcode", zipcode);
//			request.setAttribute("userName", userName);
//			request.setAttribute("password", password);
//			RequestDispatcher rdForAdmin = request.getRequestDispatcher("adminRegister");
//			rdForAdmin.forward(request, response);
//			break;
		case "staff":
			request.setAttribute("name", name);
			request.setAttribute("age", age);
			request.setAttribute("email", email);
			request.setAttribute("city", city);
			request.setAttribute("state", state);
			request.setAttribute("country", country);
			request.setAttribute("zipcode", zipcode);
			request.setAttribute("userName", userName);
			request.setAttribute("password", password);

			RequestDispatcher rdForStaff = request.getRequestDispatcher("staffRegister");
			rdForStaff.forward(request, response);
			break;

		case "student":
			request.setAttribute("name", name);
			request.setAttribute("age", age);
			request.setAttribute("email", email);
			request.setAttribute("city", city);
			request.setAttribute("state", state);
			request.setAttribute("country", country);
			request.setAttribute("zipcode", zipcode);
			request.setAttribute("userName", userName);
			request.setAttribute("password", password);

			RequestDispatcher rdForStudent = request.getRequestDispatcher("studentRegister");
			rdForStudent.forward(request, response);
			break;

		default:
			response.sendRedirect("index.jsp");
			break;
		}

	}

}
