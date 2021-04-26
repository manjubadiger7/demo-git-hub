package com.midtree.web.staff;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StaffDAOImple;
import DAO.StudentDaoImple;
import model.Staff;
import model.Student;

public class staffRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = (String) request.getAttribute("name");
		String age = (String) request.getAttribute("age");
		String email = (String) request.getAttribute("email");
		String city = (String) request.getAttribute("city");
		String state = (String) request.getAttribute("state");
		String country = (String) request.getAttribute("country");
		String zipcode = (String) request.getAttribute("zipcode");
		String userName = (String) request.getAttribute("userName");
		String password = (String) request.getAttribute("password");

		Staff staff = new Staff(name, email, age, city, state, country, zipcode, userName, password);
		try {

			new StaffDAOImple().registerStaff(staff);

		} catch (Exception e) {
			e.printStackTrace();
		}

		response.sendRedirect("index.jsp");

	}

}
