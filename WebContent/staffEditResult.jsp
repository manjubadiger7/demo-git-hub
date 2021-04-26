<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Virtual Class Room</title>
</head>
<body>

	<div class="container">
		<div class="card" style="margin-top: 60px;">
			<div class="card-header">
				<h1>Edit Results</h1>
			</div>
			<div class="card-body">
				<form action="editResult" method="post">

					<a href="staffViewResults.jsp" class="btn btn-danger btn-sm"
						style="margin-bottom: 10px;">Cancel</a>

					<div class="row">

						<%
							String URL = "jdbc:mysql://localhost:3306/virtual_classroom";
							String USER_NAME = "root";
							String PASSWORD = "21497518";

							Connection connection = null;

							Class.forName("com.mysql.jdbc.Driver");
							connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);

							Statement statement = null;

							String sql = "select * from results where student_id=?";

							int id = Integer.parseInt(request.getParameter("id"));

							PreparedStatement ps = connection.prepareStatement(sql);
							ps.setInt(1, id);

							ResultSet resultSet = ps.executeQuery();
							while (resultSet.next()) {
						%>


						<div class="col-6">
							<label for="exampleInputEmail1">Subject Id</label> <input
								type="text" class="form-control" id="" name="subject_id"
								value="<%=resultSet.getInt("subject_id")%>"
								aria-describedby="emailHelp" placeholder="Enter Subject Id">
						</div>
						<div class="col-6">
							<label for="exampleInputEmail1">Student Id</label> <input
								value="<%=resultSet.getInt("student_id")%>" type="text"
								class="form-control" id="" name=student_id
								aria-describedby="emailHelp" placeholder="Enter Student Id">
						</div>

					</div>
					<div class="row">
						<div class="col-4">
							<label for="exampleInputEmail1">Total Marks</label> <input
								value="<%=resultSet.getInt("total_marks")%>" type="text"
								class="form-control" id="" name="totalMarks"
								aria-describedby="emailHelp" placeholder="Enter Total marks">
						</div>

						<div class="col-4">
							<label for="exampleInputEmail1">Acheived Marks</label> <input
								value="<%=resultSet.getInt("acheived_marks")%>" type="text"
								class="form-control" id="" name="acheivedMarks"
								aria-describedby="emailHelp" placeholder="Enter Acheived Marks">
						</div>

						<div class="col-4">
							<label for="exampleInputEmail1">grades</label> <input type="text"
								value="<%=resultSet.getString("grades")%>" name="grades"
								class="form-control" id="" aria-describedby="emailHelp"
								placeholder="Enter grades">
						</div>

					</div>
					<div class="row" style="margin-bottom: 30px;">
						<button style="margin-top: 30px;" type="submit"
							class="btn btn-primary
                                btn-block">Add
							Result</button>
					</div>

					<%
						}
						ps.close();
						connection.close();
					%>

				</form>
			</div>
		</div>
	</div>

</body>
</html>