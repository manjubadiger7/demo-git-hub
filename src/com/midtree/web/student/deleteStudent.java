package com.midtree.web.student;

import java.io.IOException;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StaffDAOImple;
import DAO.StudentDaoImple;
import Exceptions.BikeDAOExceptions;
import Exceptions.ConnectionFailedException;
import Utility.DButil;

public class deleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		System.out.println(id);

		try {
			new StudentDaoImple().delete(id);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		response.sendRedirect("showStudents.jsp");

	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		int id = Integer.parseInt(request.getParameter("studentId"));
//
//		System.out.println(id);
//
//		try {
//			new StudentDaoImple().delete(id);
//		} catch (SQLException | ConnectionFailedException | BikeDAOExceptions e) {
//
//			e.printStackTrace();
//		}
//
//		response.sendRedirect("showStudents.jsp");
//	}

}
