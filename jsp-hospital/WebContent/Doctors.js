/**
 * 
 */

function onNeedToApproveAppointment()
{
	document.getElementById("showDetails").innerHTML = "";
	document.getElementById("showDateInput").innerHTML = "";
	$.post( "http://localhost:8080/Hospital/NeedToApproveAppointment", {
        did:9  
    }, function( resp ) {
    	console.log(resp);
    	document.getElementById("showDetails").innerHTML = resp;
    });
}

function onShowApprovedAppointments()
{
	document.getElementById("showDetails").innerHTML = "";
	console.log("Show Approve Appointment");
	document.getElementById("showDateInput").innerHTML ="<div class='col text-right'><label> Select Date :- </label></div> <div class='col'><input type='date' id='date' class='form-control'></div><div class='col'> <a href='javascript:onDateSubmit()' class='btn btn-success'>Submit</a></div>"
}

function fixAppointment(id)
{
	//var d = new Date();
	var d = document.getElementById("appdate"+id).value;
	console.log("id :- "+id);
	console.log("date :- "+d);
	
	$.post( "http://localhost:8080/Hospital/FixAppointment", {
        aid:id,
        dat : d
    }, function( resp ) {
    	alert(resp);
    	onNeedToApproveAppointment();
    });
}

function onDateSubmit()
{
	var dt = document.getElementById("date").value;
	$.post( "http://localhost:8080/Hospital/SearchByDatee", {
        dta:dt,
        did : 9
    }, function( resp ) {
    	console.log(resp);
    	document.getElementById("showDetails").innerHTML = resp;
    });
	
}

function endCase(id)
{
	var url = "http://localhost:8080/Hospital/EndCase?id="+id;
	$.get( url ,
			function(resp)
			{
				alert(resp);
				$("#row-id-"+id).remove();
			}
	);
}