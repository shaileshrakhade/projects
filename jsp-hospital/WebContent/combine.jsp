<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>User Page</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css"
	integrity="sha384-DhY6onE6f3zzKbjUPRc2hOzGAdEf4/Dz+WJwBvEYL/lkkIsI3ihufq9hk9K4lVoK"
	crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<style>
.shado {
	box-shadow: 0 10px 20px 0 rgba(0, 0, 0, 0.8), 0 6px 20px 0
		rgba(0, 0, 0, 0.8);
		
}

.caardshado {
	box-shadow: 0 10px 20px 0 rgba(150, 0, 0, 0.6), 0 6px 20px 0
		rgba(150, 0, 0, 0.6);
		
}

.checked {
	color: yellow;
}

</style>
</head>

<body
	style="background-image: linear-gradient(to right, #87FF78, #00FDFF)">
	<div class="container-fluid">
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
	<div class="container-fluid">
		<div class="row justify-content-center py-4">
			<div class="col-lg-2"></div>
			<div class="col-lg-8">

				<div class="row">
					<div class="col-lg-4">
						<input type="text" class="form-control" id="city">
					</div>
					<div class="col-lg-6">
						<div id="disease"></div>
					</div>
					<div class="col-md-2 text-center">
						<input type="submit" class="btn btn-primary" id="disBtn"
							value="Search">
					</div>
				</div>


			</div>
			<div class="col-lg-2"></div>
		</div>
	</div>
	<div class="container pt-2">
		<div class="row" id="diswise"></div>
	</div>
	<div class="container py-3 shado" id="appointmentForm"
		style="background-image: radial-gradient(circle, #5941FF, #BB8FCE, #00FDFF, #FB1C8F)">
		<!-- #AED6F1 -->

		<div class="row">
			<div class="col">
				<input type="text" hidden name="ndid" id="did">
			</div>
		</div>
		<div class="row">
			<div class="col text-center">
				<label class="text-uppercase h2 font-italic" style="color: red">Appointment
					Form</label>
			</div>
		</div>
		<div class="row py-2">
			<div class="col-md-6">
				<label>Doctor Name </label>
			</div>
			<div class="col-md-6">
				<input type="text" class="form-control" disabled name="dname"
					id="fdname">
			</div>
		</div>

		<div class="row py-2">
			<div class="col-md-6">
				<label>Hospital Name </label>
			</div>
			<div class="col-md-6">
				<input type="text" class="form-control" disabled name="hname"
					id="fhname">
			</div>
		</div>
		<div class="row py-2">
			<div class="col-md-6">
				<label>Hospital Name </label>
			</div>
			<div class="col-md-6">
				<input type="text" class="form-control" disabled name="haddress"
					id="fhaddress">
			</div>
		</div>
		<div class="row py-2">
			<div class="col-md-6">
				<label>Doctor Mobile No. </label>
			</div>
			<div class="col-md-6">
				<input type="text" class="form-control" disabled name="dmob"
					id="fdmob">
			</div>
		</div>
		<div class="row py-2">
			<div class="col-md-6">
				<label>Disease Discription </label>
			</div>
			<div class="col-md-6">
				<textarea name="ndscript" class="form-control" id="dscript" rows=3></textarea>
			</div>
		</div>
		<div class="row py-2">
			<div class="col-md-6">
				<input type="radio" id="old" name="ndoctor" value="old"><label
					for="old"> &nbsp;&nbsp;Already Have Been Seen By Another
					Doctor</label>
			</div>
			<div class="col-md-6">
				<input type="radio" checked id="new" name="ndoctor" value="new"><label
					for="new"> &nbsp;&nbsp;Get New Doctors Assigned</label>
			</div>
		</div>
		<div id="file-upload">
			<div class="row">
				<div class="col-md-6">Select Old Doctor</div>
				<div class="col-md-6">
					<div id="doctors-list"></div>
				</div>
			</div>
			<form id="appointmentFormMain" method="POST" action="#"
				enctype="multipart/form-data">
				<div class="row py-2">
					<div class="col-md-6">
						<label> upload Old Prescription</label>
					</div>
					<div class="col-md-3">
						<input type="file" name="nprescription" id="prescription"
							accept="image/*" required>
					</div>
					<div class="col-md-1">
						<a href="javascript:onDataSubmit()" class="btn btn-success"
							id="btnupload">Uploads</a>
					</div>
					<div class="col-md-1 text-center" id="emoji1"
						style="font-size: 30px">&#128522;</div>
					<div class="col-md-1 text-center" id="emoji2"
						style="font-size: 30px">&#128542;</div>
				</div>
			</form>
		</div>
		<div class="row py-2">
			<div class="col text-center">
				<a href="javascript:onSubmitFromData()" class="btn btn-success">Submit</a>
			</div>
		</div>
	</div>


	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content" style="background-image:linear-gradient(to right,#0193E3,#77FFF4)">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">Doctor Profile</h5>
			
				<a class="btn btn-danger close" data-dismiss="modal" aria-label="Close">		<span aria-hidden="true">&times;</span></a>
		
				</div>
				<div class="modal-body">
					<div class="container">
						<div class="row py-2">
							<div class="col">Doctor Name</div>
							<div class="col"><label id="mdname"></label></div>
						</div>
						<div class="row py-2">
							<div class="col">Doctor Mob. No.</div>
							<div class="col"><label id="mdmob"></label></div>
						</div>
						<div class="row py-2">
							<div class="col">Specialization</div>
							<div class="col"><label id="mdspec"></label></div>
						</div>
						<div class="row py-2">
							<div class="col">Hospital Name</div>
							<div class="col"><label id="mhname"></label></div>
						</div>
						<div class="row py-2">
							<div class="col">Hospital Address</div>
							<div class="col"><label id="maddress"></label></div>
						</div>
						<div class="row py-2">
							<div class="col">Hospital Contact No.</div>
							<div class="col"><label id="mhmob"></label></div>
						</div>
						<div class="row">
							<div class="col text-center">User Reviews</div>
						</div>
						<div class="row overflow-auto" id="doctorreviews" style="max-height: 200px;">
								
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	<div aria-live="polite" aria-atomic="true" class="position-relative">
		<!-- Position it: -->
		<!-- - `.toast-container` for spacing between toasts -->
		<!-- - `.position-absolute`, `top-0` & `end-0` to position the toasts in the upper right corner -->
		<!-- - `.p-3` to prevent the toasts from sticking to the edge of the container  -->
		<div class="toast-container position-absolute top-0 end-0 p-3">

			<div class="toast fade show" role="alert" aria-live="assertive"
				aria-atomic="true">
				<div class="toast-header">
					<strong class="mr-auto">Bootstrap</strong> <small>11 mins
						ago</small>
					<button type="button" class="btn-close" data-dismiss="toast"
						aria-label="Close"></button>
				</div>
				<div class="toast-body">Hello, world! This is a toast message.
				</div>
			</div>
		</div>
	</div>
</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"
		integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD"
		crossorigin="anonymous"></script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js"
		integrity="sha384-5h4UG+6GOuV9qXh6HqOLwZMY4mnLPraeTrjT5v07o347pj6IkfuoASuGBhfDsp3d"
		crossorigin="anonymous"></script>
	
<script>
	 
	$(document).ready(function(){
		
	//	  $('#toast').show();
		//$("toast").show();
		$("#appointmentForm").hide();
		$("#emoji1").hide();
		$("#emoji2").hide();
		$.ajax({
		        type: "Get",
		        contentType: "text/html",
		        url: "http://localhost:8080/Hospital/GetDisease",
		        dataType: 'Text',
		        cache: true,
		        timeout: 600000,
		        success: function (data,responseText) {
			          console.log(data);
			           	console.log("response Text :- "+responseText);
		        		var arr = data.split(",");
			            // a = str.split(",");
			       	  var select = document.createElement("select");
			       	  select.name = "disease";
			       	  select.id = "di"
			       	
			       	  for (const val of arr) {
			       	    var option = document.createElement("option");
			       	    option.value = val.trim().replace('[','').replace(']','');
			       	    option.text = val.trim().replace('[','').replace(']','');
			       	    select.appendChild(option);
			       	  }
			       	 
			       	  var label = document.createElement("label");
			       	  label.innerHTML = "Choose Your Disease : ";
			       	  label.htmlFor = "di";
			       	 	
			       	  document.getElementById("disease").appendChild(label).appendChild(select);
			       	
		         },
		        error: function (e) {
		        	console.log(e);
		        }
		    });
		
	});
	</script>
	<script src="Combine.js"></script>
</body>

</html>