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
.shado {
	box-shadow: 0 10px 20px 0 rgba(0, 0, 0, 0.8), 0 6px 20px 0
		rgba(0, 0, 0, 0.8);
}
</style>
</head>

<body
	style="background-image: linear-gradient(to right, #87FF78, #00FDFF)">

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
	<div id="ch"></div>
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
		
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
	 
	$(document).ready(function(){
		let abc = new Map();
        
		$.ajax({
		        type: "Get",
		        contentType: "text/html",
		        url: "http://localhost:8080/Hospital/Chart",
		        dataType: 'Text',
		        cache: true,
		        timeout: 600000,
		        success: function (data,responseText) {
			          console.log(data);
			           	console.log("response Text :- "+responseText);

			           	var map=data;
			    	    var nmap=new Object();
			            var z=map.substr(1, map.length-2);

			            var y=z.split(',');
			            for(var i=0;i<y.length;i++)
			            {
			                var k=y[i];
			                var m=k.split("=");
			                abc.set(m[0],m[1]);
			                nmap[m[0]]=m[1];
			                
			            }
		//				console.log(abc);
						google.load("visualization", "1", {packages:["corechart"]});
						google.setOnLoadCallback(drawVisualization);       	
									           	  
			         		         },
		        error: function (e) {
		        	console.log(e);
		        }
		    });
		
	  	function drawVisualization()
       	{
	  		console.log(abc);
       		var data = new google.visualization.DataTable();
       		data.addColumn('string', 'Specialization');
       		data.addColumn('number', 'Total Appointment');
       		abc.forEach( (value, key, abc) => {
   	  			data.addRow([key,parseInt(value)]);
   	  	
   	  		});
/*   	  	
       		
       		data.addRows([
			  ['Work', 11],
			  ['Eat', 2],
			  ['Commute', 2],
			  ['Watch TV', 2],
			  ['Sleep', 7]
       		]);
*/
       	  // Optional; add a title and set the width and height of the chart
       	  var options = {'title':'Appointments According to Doctors Specialization', 'width':720, 'height':400};

       	  // Display the chart inside the <div> element with id="piechart"
       	  var chart = new google.visualization.BarChart(document.getElementById('ch'));
       	  chart.draw(data, options);


       	}

		
	});
	</script>
</body>

</html>