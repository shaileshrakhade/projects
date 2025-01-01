<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>User Page</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css"
	integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK"
	crossorigin="anonymous">
</head>

<body style="background-image: linear-gradient(to right, #87FF78, #00FDFF)">

	<nav class="navbar navbar-expand-lg"
		style="background-image: linear-gradient(to right, cyan, pink)">
		<a class="navbar-brand" href="#">Hospital Recomondation System</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="Customer.html">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="javascript:onNeedToApproveAppointment()">Need To Approve Appointments</a></li>
				<li class="nav-item"><a class="nav-link" href="javascript:onShowApprovedAppointments()">Show Approved Appointments</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> User </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">User Profile</a>

					</div></li>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<button class="btn btn-outline-success my-2 my-sm-0" type="Submit">LogOut</button>
			</form>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row py-2" id="showDateInput"></div>
		<div class="row py-2"><div class="col text-center"><h2> Show Data </h2></div></div>
		
		<div class="row" id="showDetails"></div>
	</div>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"
		integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js"
		integrity="sha384-5h4UG+6GOuV9qXh6HqOLwZMY4mnLPraeTrjT5v07o347pj6IkfuoASuGBhfDsp3d"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="Doctors.js"></script>
	 
	
</body>

</html>