<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.DuplicateFormatFlagsException"%>
<%@page import="Exceptions.BikeDAOExceptions"%>
<%@page import="Exceptions.ConnectionFailedException"%>

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
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
	integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<!-- Navigation bar starts -->

				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarTogglerDemo03"
						aria-controls="navbarTogglerDemo03" aria-expanded="false"
						aria-label="Toggle
                            navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<h4>
						Class room <span class="span">Student</span>
					</h4>
					<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
						<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
							<li class="nav-item active"><a class="nav-link"
								href="studentWelcome.jsp">Home <span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#">News</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Contact</a>
							</li>
						</ul>
						<form class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search">
							<button
								class="btn btn-outline-success my-2
                                    my-sm-0"
								type="submit">Search</button>
						</form>
					</div>
				</nav>
				<!-- Navigation bar Ends -->
			</div>
			<div class="card-body">

				<div class="row">
					<div class="side-nav col-3">
						<!-- Side nav starts -->
						<ul class="list-group">
							<li class="list-group-item "><a
								class="list-group-item-action 
                                    d-flex                                         justify-content-between
                                        align-items-center"
								href="studentWelcome.jsp"> <i class="fa fa-video-camera" aria-hidden="true"></i>
									Class
							</a></li>

							<li class="list-group-item "><a 
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="studentDiscussion.jsp"> <i class="fa fa-comments"
									aria-hidden="true"></i> Discussion 
							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="studentViewStaffs.jsp"> <i class="fa fa-users" aria-hidden="true"></i>
									View Staffs
							</a></li>

							<li class="list-group-item"><a style="color: #00cc00;"
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="studentViewStudents.jsp"><i class="fa fa-id-card-o" aria-hidden="true"></i> View
									Students <i
									class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="studentViewResult.jsp"> <i class="fa fa-graduation-cap"
									aria-hidden="true"></i> Results
							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href=""> <i class="fa fa-book" aria-hidden="true"></i>
									Assignments
							</a></li>

							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="index.jsp"> <i class="fa fa-sign-out"
									aria-hidden="true"></i> Log out

							</a></li>
						</ul>
						<!-- Side nav ends -->
					</div>


					<%
						String URL = "jdbc:mysql://localhost:3306/virtual_classroom";
						String USER_NAME = "root";
						String PASSWORD = "21497518";

						Connection connection = null;

						Class.forName("com.mysql.jdbc.Driver");
						connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);

						Statement statement = null;

						statement = connection.createStatement();
					%>





					<div class="window" style="width: 40rem; padding-left: 2rem;">
						<!--  -->
						<div
							style="position: relative; height: 22rem; overflow: auto; display: block;"
							class="table-wrapper-scroll-y
                                my-custom-scrollbar">



							<table
								class="table table-bordered table-striped
                                    mb-0 ">

								<tr>
									<th>Id</th>
									<th>Student name</th>
									<th>Age</th>
									<th>Email</th>
									<th>City</th>
									<th>state</th>
									<th>Country</th>
									<th>zipcode</th>


								</tr>

								<%
									String query = "select * from student";

									ResultSet resultSet = statement.executeQuery(query);
									while (resultSet.next()) {
								%>
								<tr>
									<td><%=resultSet.getInt("id")%></td>
									<td><%=resultSet.getString("name")%></td>
									<td><%=resultSet.getInt("age")%></td>
									<td><%=resultSet.getString("email")%></td>
									<td><%=resultSet.getString("city")%></td>
									<td><%=resultSet.getString("state")%></td>
									<td><%=resultSet.getString("country")%></td>
									<td><%=resultSet.getString("zipcode")%></td>
									<td><a href="deleteStudent?id=<%=resultSet.getInt("id")%>">Delete</a></td>


								</tr>
								<%
									}
									statement.close();
									connection.close();
									resultSet.close();
								%>


							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>