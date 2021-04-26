<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



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
				<h1>Add Results</h1>
			</div>
			<div class="card-body">
				<form action="addResult" method="post">
				
				<a href="staffViewResults.jsp" class="btn btn-danger btn-sm"
								style="margin-bottom:10px;">Cancel</a>

					<div class="row">

						<div class="col-6">
							<label for="exampleInputEmail1">Subject Id</label> <input
								type="text" class="form-control" id="" name="subject_id"
								aria-describedby="emailHelp" placeholder="Enter Subject Id">
						</div>
						<div class="col-6">
							<label for="exampleInputEmail1">Student Id</label> <input
								type="text" class="form-control" id="" name=student_id
								aria-describedby="emailHelp" placeholder="Enter Student Id">
						</div>

					</div>
					<div class="row">
						<div class="col-4">
							<label for="exampleInputEmail1">Total Marks</label> <input
								type="text" class="form-control" id="" name="totalMarks"
								aria-describedby="emailHelp" placeholder="Enter Total marks">
						</div>

						<div class="col-4">
							<label for="exampleInputEmail1">Acheived Marks</label> <input
								type="text" class="form-control" id="" name="acheivedMarks"
								aria-describedby="emailHelp" placeholder="Enter Acheived Marks">
						</div>

						<div class="col-4">
							<label for="exampleInputEmail1">grades</label> <input type="text"
							name="grades"
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

				</form>
			</div>
		</div>
	</div>

</body>
</html>