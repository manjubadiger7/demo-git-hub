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

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<title>Virtual Class Room</title>
</head>
<body>

	<div class="container" style="margin-top: 20px; width: 30rem;">
		<div class="card">
			<div class="card-header">
				<h1>
					Student Login <i class="fa fa-tablet" aria-hidden="true"></i>
				</h1>
			</div>
			<div class="card-body">
				<form action="forgotPassword" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">User Name</label> <input
							type="text" class="form-control" id="userName" name="userName"
							aria-describedby="emailHelp" placeholder="Enter user name">
						<small id="emailHelp" class="form-text text-muted">We'll
							never share your email with anyone else.</small> <span class="error_form"
							id="User_name_error_message"></span>
					</div>

					<button type="submit" class="btn btn-primary btn-block">Submit</button>
				</form>
			</div>
		</div>
	</div>

	<script>
	
	
	 $("#User_name_error_message").hide()
	    
	     $("#userName").focusout(function () {
        check_username();
    });

	    

	 function check_username() {
	        var pattern = /^([a-zA-Z])*$/;
	        var name = $("#userName").val();
	        if (pattern.test(name) && name !== '') {
	            $("#User_name_error_message").html("Valid user name");
	            $("#User_name_error_message").show();
	            $("#User_name_error_message").css("color", "green",);
	            error_name = true;
	        }
	        else {
	            $("#User_name_error_message").html("Should contain only characters");
	            $("#User_name_error_message").show();
	            $("#User_name_error_message").css("color", "red",);
	        }
	    }
	
	</script>

</body>
</html>