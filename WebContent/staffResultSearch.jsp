<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.DuplicateFormatFlagsException"%>
<%@page import="Exceptions.BikeDAOExceptions"%>
<%@page import="Exceptions.ConnectionFailedException"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.util.DuplicateFormatFlagsException"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/studentResults.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Virtual Class Room</title>
</head>
<body>



	<%
		String URL = "jdbc:mysql://localhost:3306/virtual_classroom";
		String USER_NAME = "root";
		String PASSWORD = "21497518";

		Connection connection = null;

		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);

		Statement statement = null;
		String name = request.getParameter("val");
	%>


	<div class="window" style="width: 40rem; padding-left: 5px;">
		<!--  -->


	<div style='position: relative; height: 22rem; overflow: auto; display: block;'class='table-wrapper-scroll-y my-custom-scrollbar'>
		
			
			
			

			<%
			String sql = "select student_id, student.name as studentName, subject.name as subjectName, results.total_marks, results.acheived_marks, results.grades from results inner join subject on results.subject_id = subject.id inner join student on student.id=results.student_id where student.name like'"
					+ name + "%'";
			PreparedStatement ps = connection.prepareStatement(sql);

			ResultSet resultSet = ps.executeQuery(sql);

			if (!resultSet.isBeforeFirst()) {
				out.println("<p>No Record Found!</p>");
			} else {

				out.print("<table class='table table-bordered table-striped mb-0 '>");
				out.print(
						"<tr><th>Student Name</th><th>Subject name</th><th>Total marks</th><th>Acheived marks</th><th>Grades</th></tr>");
				while (resultSet.next()) {

					out.print("<tr><td>" + resultSet.getString("studentName") + "</td><td>"
							+ resultSet.getString("subjectName") + "</td><td>" + resultSet.getInt("total_marks")
							+ "</td><td>" + resultSet.getInt("acheived_marks") + "</td><td>"
							+ resultSet.getString("grades") + "</td></tr>");
				}
				out.print("</table>");
			}
			ps.close();
			resultSet.close();
			connection.close();
		%>


		</div>
		
		
	</div>

</body>
</html>