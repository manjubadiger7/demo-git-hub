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
<link rel="stylesheet" href="disscussion.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<title>Virtual Class Room</title>
</head>
<body>
	<div class="container" style="margin-top: 30px">
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
							<li class="nav-item active"><a class="nav-link" href="studentWelcome.jsp">Home
									<span class="sr-only">(current)</span>
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

							<li class="list-group-item "><a style="color: #00cc00;"
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="studentDiscussion.jsp"> <i class="fa fa-comments"
									aria-hidden="true"></i> Discussion <i
									class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="studentViewStaffs.jsp"> <i class="fa fa-users" aria-hidden="true"></i>
									View Staffs
							</a></li>

							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="studentViewStudents.jsp"> <i class="fa fa-id-card-o" aria-hidden="true"></i> View
									Students
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
					<!-- Side nav ends -->

					<!-- Slide Show starts -->

					<%
						String URL = "jdbc:mysql://localhost:3306/virtual_classroom";
						String USER_NAME = "root";
						String PASSWORD = "21497518";

						Connection connection = null;

						Class.forName("com.mysql.jdbc.Driver");
						connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);

						Statement statement = null;
					%>


					<div class="window" style="height: 9rem; width: 40rem;">
						<div
							class="table-wrapper-scroll-y
                                my-custom-scrollbar"
							style="display: block; position: relative; height: 19rem; overflow: auto;">

							<%
								statement = connection.createStatement();
								String sql = "select comments.description as primary_comment, comments_replays.description as secondary_comment, comments.comment_time as primary_time, comments.comment_date as primary_date, comments_replays.comment_time as secondary_time, comments_replays.comment_date as secondary_date from comments inner join comments_replays on comments.id=comments_replays.comment_id;";
								PreparedStatement ps = connection.prepareStatement(sql);
								ResultSet resultSet = ps.executeQuery();
								while (resultSet.next()) {
							%>

							<div class="comment">
								<p class="primary-comment" style="font-size: 22px;">
									<i class='fas fa-id-badge' style='font-size: 28px'></i> <span
										class="name" style="font-size: 18px">Name <br> <span
										style="font-size: 12px; margin-left: 30px;"> <%=resultSet.getTime("primary_time")%>
											<%=resultSet.getDate("primary_date")%>
									</span></span><br>

									<%=resultSet.getString("primary_comment")%>
								</p>


								<p class="replayed" style="font-size: 18px; margin-left: 7rem;">
									<i class='fas fa-id-badge' style='font-size: 22px'></i><span
										class="name" style="font-size: 16px;"> Name</span><br> <span
										style="font-size: 12px;"> <%=resultSet.getTime("secondary_time")%>
										<%=resultSet.getDate("secondary_date")%>

									</span><br>


									<%=resultSet.getString("secondary_comment") %>

								</p>
						

							</div>
							<hr>
							<%
								}
								statement.close();
								connection.close();
								resultSet.close();
							%>

						</div>
						<div class="writeComment">
							<div class="row">
								<form class="form-inline my-2 my-lg-0" action="postComment"
									method="post">
									<input class="form-control mr-sm-2 "
										style="width: 30rem; margin-left: 10px;" type="search"
										name="comment" placeholder="Type here" aria-label="Search">
									<button
										class="btn btn-outline-success my-2
                                    my-sm-0"
										type="submit">Send</button>
								</form>
							</div>

						</div>
					</div>

				</div>


				<!-- Slide Show ends -->
			</div>
		</div>

	</div>
	<script type="text/javascript">
		
	</script>
</body>
</html>