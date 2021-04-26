package com.midtree.web.staff;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StaffDAOImple;
import model.Result;

public class editResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int subjectId = Integer.parseInt(request.getParameter("subject_id"));
		int studentId = Integer.parseInt(request.getParameter("student_id"));
		int totalMarks = Integer.parseInt(request.getParameter("totalMarks"));
		int acheviedMarks = Integer.parseInt(request.getParameter("acheivedMarks"));
		String grades = request.getParameter("grades");

		Result result = new Result(subjectId, studentId, totalMarks, acheviedMarks, grades);

		try {
			new StaffDAOImple().editResult(result);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		response.sendRedirect("staffViewResults.jsp");

	}

}
