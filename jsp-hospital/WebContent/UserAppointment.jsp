<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>User Page</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css"
	integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK"
	crossorigin="anonymous">
	<style>
		.shado
		{
			box-shadow: 0 10px 20px 0 rgba(20, 100, 120, 0.9), 0 6px 20px 0 rgba(0, 0, 0, 0.8);
		}
	</style>
</head>

<body
	style="background-image: linear-gradient(to right, #0F0F0F, #960007)">

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
				<li class="nav-item"><a class="nav-link" href="Customer.html">CityWise
						Search</a></li>
				<li class="nav-item"><a class="nav-link" href="dswise.html">DiseaseWise
						Search</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> User </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">User Profile</a> <a
							class="dropdown-item" href="#">Search History</a>

					</div></li>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<button class="btn btn-outline-success my-2 my-sm-0" type="Submit">LogOut</button>
			</form>
		</div>
	</nav>
	<div class="container-fluid py-2">
		<div class="container py-3 shado" id="appointmentForm" style="background-image: linear-gradient(to right, #BB8FCE, #00FDFF)">
				<div class="row py-1"><div class="col text-center"><h2>Appointment Details</h2></div></div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label>Doctor Name</label></div>
				<div class="col-md-3"><label id="dname"></label></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label>Doctor Mobile No.</label></div>
				<div class="col-md-3"><label id="dmob"></label></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label>Hospital of Doctor</label></div>
				<div class="col-md-3"><label id="hospital"></label></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label>Hospital Address</label></div>
				<div class="col-md-3"><label id="haddre"></label></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label>Application Submit Date</label></div>
				<div class="col-md-3"><label id="adate"></label></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label>Description </label></div>
				<div class="col-md-3"><label class="text-wrap" id="Disea"></label></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label>Appointment Date</label></div>
				<div class="col-md-3"><label id="apdate"></label></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label>Old Doctor</label></div>
				<div class="col-md-3"><label id="oldDoctor"></label></div>
				<div class="col-md-3"></div>
			</div>
			<div class="row py-3">
				<div class="col-md-3"></div>
				<div class="col-md-3"><label> Show Prescription</label></div>
				<div class="col-md-3"><aid="showPrescription" target="_blank" class="btn btn-primary">Show Prescription</a></div>
				<div class="col-md-3"></div>
			</div>
		</div>
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
	<script>
	 
	$(document).ready(function(){
		$.ajax({
		        type: "Get",
		        contentType: "text/html",
		        url: "http://localhost:8080/Hospital/GetAppointmentDetail",
		        dataType: 'Text',
		        cache: true,
		        timeout: 600000,
		        success: function (data,responseText) {
			          console.log(data);
			          console.log(responseText);
			          var jsps = JSON.stringify(data);
			          var json  = JSON.parse(data);
			          $("#dname").text(json.dname);
			          $("#dmob").text(json.dmob);
			          $("#hospital").text(json.hname);
			          $("#haddre").text(json.haddress);
			          $("#adate").text(json.adate);
			          $("#Disea").text(json.dscript);
			          $("#apdate").text(json.apdate);
			          $("#oldDoctor").text(json.olddname);
			          $("#showPrescription").attr("href",json.prescription);  
			          
		         },
		        error: function (e) {
		        	console.log(e);
		        }
		    });
		
	});
	</script>
</body>

</html>