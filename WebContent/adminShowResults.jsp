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
						Class room <span class="span">Staff</span>
					</h4>
					<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
						<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
							<li class="nav-item active"><a class="nav-link"
								href="adminWelcome.jsp">Home <span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#">News</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Contact</a>
							</li>
						</ul>
						<form class="form-inline my-2 my-lg-0" name="vinform">
							<input class="form-control mr-sm-2" type="search" name="name"
								placeholder="Search" aria-label="Search" onkeyup="searchInfo()">
							<button
								class="btn btn-outline-danger my-2
                                    my-sm-0"
								type="submit">Cancel</button>
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
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href=""> <i class="fa fa-video-camera" aria-hidden="true"></i>
									Class
							</a></li>

							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href=""> <i class="fa fa-comments"
									aria-hidden="true"></i> Discussion
							</a></li>
							<li class="list-group-item"><a 
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="adminShowStaffs.jsp"> <i class="fa fa-users"
									aria-hidden="true"></i> Show staffs 
							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="adminShowStudents.jsp"> <i class="fa fa-table"
									aria-hidden="true"></i> Show Students
							</a></li>
							<li class="list-group-item"><a style="color: #00cc00;"
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="adminShowResults.jsp"> <i class="fa fa-graduation-cap"
									aria-hidden="true"></i> Results <i
									class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>


							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href=""> <i class="fa fa-bullhorn" aria-hidden="true"></i>
									Announcements


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
					%>


					<div class="window" style="width: 40rem; padding-left: 5px;">
						<!--  -->
						<a href="addResult.jsp" class="btn btn-primary btn-sm"
							style="margin-bottom: 10px;">Add Results</a>

						<div
							style="position: relative; height: 22rem; overflow: auto; display: block;"
							class="table-wrapper-scroll-y
                                my-custom-scrollbar">

							<span id="mylocation"></span>


							<table
								class="table table-bordered table-striped
                                    mb-0 ">

								<tr>
									<th>Student Name</th>
									<th>Subject name</th>
									<th>Total marks</th>
									<th>Acheived marks</th>
									<th>Grades</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>

								<%
									statement = connection.createStatement();
									String sql = "select student_id, student.name as studentName, subject.name as subjectName, results.total_marks, results.acheived_marks, results.grades from results inner join subject on results.subject_id = subject.id inner join student on student.id=results.student_id;";
									String query = "select subject.name, results.total_marks, results.acheived_marks, results.grades from results inner join subject on results.subject_id = subject.id where results.student_id=1;";

									ResultSet resultSet = statement.executeQuery(sql);
									while (resultSet.next()) {
								%>
								<tr>
									<td><%=resultSet.getString("studentName")%></td>
									<td><%=resultSet.getString("subjectName")%></td>
									<td><%=resultSet.getInt("total_marks")%></td>
									<td><%=resultSet.getInt("acheived_marks")%></td>
									<td><%=resultSet.getString("grades")%></td>
									<td><a
										href="staffEditResult.jsp?id=<%=resultSet.getInt("student_id")%>">Edit</a>
									</td>
									<td><a
										href="deleteResult?id=<%=resultSet.getInt("student_id")%>">Delete</a>
									</td>

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

		<script>
			var request = new XMLHttpRequest();
			function searchInfo() {
				var name = document.vinform.name.value;
				var url = "staffResultSearch.jsp?val=" + name;

				try {
					request.onreadystatechange = function() {
						if (request.readyState == 4) {
							var val = request.responseText;
							document.getElementById('mylocation').innerHTML = val;
						}
					}//end of function  
					request.open("GET", url, true);
					request.send();
				} catch (e) {
					alert("Unable to connect to server");
				}
			}
		</script>
</body>
</html>