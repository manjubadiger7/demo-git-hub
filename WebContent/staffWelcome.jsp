<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="javax.servlet.http.HttpSession"%>
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
							<li class="nav-item active"><a class="nav-link" href="staffWelcome.jsp">Home
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
							<li class="list-group-item"><a style="color: #00cc00;"
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="staffWelcome.jsp"> <i class="fa fa-video-camera" aria-hidden="true"></i>
									Class <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i>
							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="staffDiscussion.jsp"> <i class="fa fa-comments"
									aria-hidden="true"></i> Discussion
							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="staffViewStaffs.jsp"> <i class="fa fa-users" aria-hidden="true"></i> Show staffs
							</a></li>
							
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="staffViewStudents.jsp"> <i class="fa fa-id-card-o" aria-hidden="true"></i> Show Students
							</a></li>
							<li class="list-group-item"><a
								class="list-group-item-action d-flex
                                        justify-content-between
                                        align-items-center"
								href="staffViewResults.jsp"> <i class="fa fa-graduation-cap"
									aria-hidden="true"></i> Results


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
					<!-- Side nav ends -->

					<!-- Slide Show starts -->
					
					<div class="window" style="width: 40rem;">
					<button class="btn btn-success btn-sm" style="margin-bottom:5px;">Add class</button>
						<div
							style="display: block; position: relative; height: 19rem; overflow: auto;"
							class="table-wrapper-scroll-y
                                my-custom-scrollbar">
                                
                                
							<table
								class="table table-bordered table-striped
                                    mb-0">
								<tbody>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>
									</tr>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>
									</tr>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>
									</tr>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>

									</tr>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>
									</tr>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>

									</tr>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>

									</tr>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>

									</tr>
									<tr>

										<td>Videos</td>
										<td>Descreption</td>

									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>