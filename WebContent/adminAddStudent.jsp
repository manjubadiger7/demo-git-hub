<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
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

	<div class="container">
		<div class="card">
			<div class="card-header">
				<h1>Add Student</h1>
			</div>
			<div class="card-body">
				<form action="adminAddStudent" method="post">
					<div class="row">
						<div class="col-4">
							<div class="form-group">
								<label for="exampleInputPassword1">Name</label> <input
									type="text" name="name" class="form-control" id="fullName"
									placeholder="Full Name"> <span class="error_form"
									id="name_error_message"></span>
							</div>
						</div>

						<div class="col-4">
							<div class="form-group">
								<label for="exampleInputPassword1">Age</label> <input
									type="text" class="form-control" id="age" name="age"
									placeholder="Age"> <span class="error_form"
									id="age_error_message"></span>
							</div>
						</div>

						<div class="col-4">

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="email" name="email"
									aria-describedby="emailHelp" placeholder="Enter email">
								<span class="error_form" id="email_error_message"></span>

							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<div class="form-group">
								<label for="exampleInputEmail1">City </label> <input type="text"
									class="form-control" id="city" name="city"
									aria-describedby="emailHelp" placeholder="City"> <span
									class="error_form" id="city_error_message"></span>

							</div>
						</div>

						<div class="col-4">
							<div class="form-group">
								<label for="exampleInputEmail1">State </label> <input
									type="text" class="form-control" id="state" name="state"
									aria-describedby="emailHelp" placeholder="State"> <span
									class="error_form" id="state_error_message"></span>

							</div>
						</div>

						<div class="col-4">
							<div class="form-group">
								<label for="exampleInputEmail1">Country </label> <input
									type="text" class="form-control" id="country" name="country"
									aria-describedby="emailHelp" placeholder="Country"> <span
									class="error_form" id="country_error_message"></span>
							</div>
						</div>

					</div>
					<div class="row">
						<div class="col-6">
							<div class="form-group">
								<label for="exampleInputEmail1">Zip Code </label> <input
									type="text" class="form-control" id="zipcode" name="zipcode"
									aria-describedby="emailHelp" placeholder="xxx-xxx"> <span
									class="error_form" id="zipcode_error_message"></span>
							</div>
						</div>

						<div class="col-6">
							<div class="form-group">
								<label for="exampleInputEmail1">User Name </label> <input
									type="text" class="form-control" id="userName" name="userName"
									aria-describedby="emailHelp" placeholder="User Name"> <span
									class="error_form" id="User_name_error_message"></span>
							</div>
						</div>

					</div>
					<div class="row">
						<div class="col-6">
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

						<div class="col-6">
							<div class="form-group">
								<label for="exampleInputPassword1"> Confirm Password</label> <input
									type="password" class="form-control" id="confirmPassword"
									name="confirPassword" placeholder="Confirm Password"> <span
									class="error_form" id="confirm_password_error_message"></span>
							</div>
						</div>
					

					</div>
					<div class="row">
						<div class="col-6">
							<button type="submit"
								class="btn btn-primary
                                    btn-block">Add Staff</button>
						</div>
						<div class="col-6">
							<button type="reset"
								class="btn btn-success
                                    btn-block">Reset</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
$(function () {

    $("#name_error_message").hide();
    $("#age_error_message").hide()
    $("#email_error_message").hide()
    $("#city_error_message").hide()
    $("#state_error_message").hide()
    $("#country_error_message").hide()
    $("#zipcode_error_message").hide()
    $("#User_name_error_message").hide()
    $("#password_error_message").hide()
    $("#confirm_password_error_message").hide();
    $("#access_error_message").hide();
    $("#drop_down").hide();

    $("#fullName").focusout(function () {
        check_name();
    });
    $("#age").focusout(function () {
        check_age();
    });
    $("#email").focusout(function () {
        check_email();
    });

    $("#city").focusout(function () {
        check_city();
    });
    $("#state").focusout(function () {
        check_state();
    });
    $("#country").focusout(function () {
        check_country();
    });
    $("#zipcode").focusout(function () {
        check_zipcode();
    });
    
    
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
    })
    $("#access").focusout(function () {
        check_access();
    })




    function check_name() {
        var pattern = /^[a-zA-Z]*$/;
        var name = $("#fullName").val();
        if (pattern.test(name) && name !== '') {
            $("#name_error_message").html("Valid Name");
            $("#name_error_message").show();
            $("#name_error_message").css("color", "green",);
            error_name = true;
        }
        else {
            $("#name_error_message").html("Should contain only characters");
            $("#name_error_message").show();
            $("#name_error_message").css("color", "red",);
        }
    }

    function check_age() {
        var name = $("#age").val();
        if (name > 18 && name < 60 && name !== '') {
            $("#age_error_message").html("Valid age");
            $("#age_error_message").show();
            $("#age_error_message").css("color", "green",);
            error_name = true;
        }
        else {
            $("#age_error_message").html("Should be between 18-60");
            $("#age_error_message").show();
            $("#age_error_message").css("color", "red",);
        }
    }

    function check_email() {
        var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        var user_name = $("#email").val();
        if (pattern.test(user_name) && user_name !== '') {
            $("#email_error_message").html("Valid email");
            $("#email_error_message").show();
            $("#email_error_message").css("color", "green",);
            error_userName = true;
        }
        else {
            $("#email_error_message").html("Invalid email !");
            $("#email_error_message").show();
            $("#email_error_message").css("color", "red",);
        }
    }

    function check_city() {
        var pattern = /^[a-zA-Z]*$/;
        var name = $("#city").val();
        if (pattern.test(name) && name !== '') {
            $("#city_error_message").html("Valid City");
            $("#city_error_message").show();
            $("#city_error_message").css("color", "green",);
            error_name = true;
        }
        else {
            $("#city_error_message").html("Should contain only characters");
            $("#city_error_message").show();
            $("#city_error_message").css("color", "red",);
        }
    }

    function check_state() {
        var pattern = /^[a-zA-Z]*$/;
        var name = $("#state").val();
        if (pattern.test(name) && name !== '') {
            $("#state_error_message").html("Valid City");
            $("#state_error_message").show();
            $("#state_error_message").css("color", "green",);
            error_name = true;
        }
        else {
            $("#state_error_message").html("Should contain only characters");
            $("#state_error_message").show();
            $("#state_error_message").css("color", "red",);
        }
    }

    function check_country() {
        var pattern = /^[a-zA-Z]*$/;
        var name = $("#country").val();
        if (pattern.test(name) && name !== '') {
            $("#country_error_message").html("Valid Country");
            $("#country_error_message").show();
            $("#country_error_message").css("color", "green",);
            error_name = true;
        }
        else {
            $("#country_error_message").html("Should contain only characters");
            $("#country_error_message").show();
            $("#country_error_message").css("color", "red",);
        }
    }

    function check_zipcode() {
        var pattern = /^([0-9]{3}-[0-9]{3})*$/; //"\\d{5}(-\\d{4})?"
        var name = $("#zipcode").val();
        if (pattern.test(name) && name !== '') {
            $("#zipcode_error_message").html("Valid Zip code");
            $("#zipcode_error_message").show();
            $("#zipcode_error_message").css("color", "green",);
            error_name = true;
        }
        else {
            $("#zipcode_error_message").html("Should contain only numbers and format xxx-xxx");
            $("#zipcode_error_message").show();
            $("#zipcode_error_message").css("color", "red",);
        }
    }

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




    function check_access() {
        var profession = $("#form_profession").val();
        if (profession !== '') {

            $("#access_error_message").html("");
            $("#access_error_message").show();
            $("#access_error_message").css("color", "green",);
            error_proffession = true;
        }
        else {
            $("#access_error_message").html("Please select frofession");
            $("#access_error_message").show();
            $("#access_error_message").css("color", "red",);
        }
    }


});
        </script>
</body>
</html>
