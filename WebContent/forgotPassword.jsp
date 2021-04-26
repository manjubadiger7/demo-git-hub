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

	<div class="container" style="margin-top:20px; width:30rem;">
		<div class="card">
			<div class="card-header">
				<h1>
					Student Login <i class="fa fa-tablet" aria-hidden="true"></i>
				</h1>
			</div>
			<div class="card-body">
				<form action="Login" method="post">
					<div class="form-group">
						<label for="sel1">Select</label> <select name="access"
							class="form-control" id="sel1">

							<option value="admin">Admin</option>
							<option value="staff">Staff</option>
							<option value="student">Student</option>
						</select> <span class="error_form" id="access_error_message"></span>
					</div>
					<div class="form-group">
					
						<input value="<%= %>">	
						
					</div>
					<div class="row">
						<div class="col-4">
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="password"
									name="password" placeholder="Password"> <span
									class="error_form" id="password_error_message"></span>
							</div>
							<div
								class="form-group row
                                    justify-content-center"
								id="drop_down">
								<ul class="list-group list-group-flush">
									<li
										class="list-group-item font-italic
                                            text-danger">
										Atleast 9 characters</li>
									<li
										class="list-group-item font-italic
                                            text-danger">
										Atleast 2 Uppercase</li>
									<li
										class="list-group-item font-italic
                                            text-danger">
										Atleast one speacial character</li>
									<li
										class="list-group-item font-italic
                                            text-danger">
										Atleast1 number</li>

								</ul>
							</div>
						</div>
						</div>
						<div class="col-4">
							<div class="form-group">
								<label for="exampleInputPassword1"> Confirm Password</label> <input
									type="password" class="form-control" id="confirmPassword"
									name="confirPassword" placeholder="Confirm Password"> <span
									class="error_form" id="confirm_password_error_message"></span>
							</div>
						</div>
					
					<button type="submit" class="btn btn-primary btn-block">LogIn</button>
				</form>
			</div>
		</div>
	</div>

	<script>
	
	
	  $("#password_error_message").hide()
	    $("#confirm_password_error_message").hide();
	  $("#drop_down").hide();
	    
	     $("#userName").focusout(function () {
        check_username();
    });

	     $("#password").focusin(function () {
	         $("#drop_down").slideDown(500);
	     });
	     $("#password").focusout(function () {
	         check_password();
	     });
	     $("#password").focusout(function () {
	         $("#drop_down").slideUp();
	     });


	     $("#confirmPassword").focusout(function () {
	         check_confirm_password();
    
    
	         function check_password() {
	             var pattern = /^(?=.*\d)(?=.*[a-z]{2,})(?=.*[A-Z]{2,})[a-zA-Z0-9]{9,}$/;
	             var password = $("#password").val();
	             if (pattern.test(password) && password !== '') {

	                 $("#password_error_message").html("Valid Password");
	                 $("#password_error_message").show();
	                 $("#password_error_message").css("color", "green",);
	                 error_password = true;
	             }
	             else {
	                 $("#password_error_message").html("Invalid  !");
	                 $("#password_error_message").show();
	                 $("#password_error_message").css("color", "red",);
	             }
	         }

	         function check_confirm_password() {
	             var confirm_password = $("#confirmPassword").val();
	             var password = $("#password").val();
	             if (confirm_password == password && confirm_password !== '') {

	                 $("#confirm_password_error_message").html("Password confirmed");
	                 $("#confirm_password_error_message").show();
	                 $("#confirm_password_error_message").css("color", "green",);
	                 error_confirmPassword = true;

	             }
	             else {
	                 $("#confirm_password_error_message").html("Password does not match!");
	                 $("#confirm_password_error_message").show();
	                 $("#confirm_password_error_message").css("color", "red",);
	             }
	         }
	
	</script>

</body>
</html>