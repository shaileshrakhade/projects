
let disBtn = document.getElementById("disBtn");
disBtn.addEventListener("click",SearchDis);


let idn = "";

let oldradioBtn = document.getElementById("old");
oldradioBtn.addEventListener("click",oldChecked);

let newradioBtn = document.getElementById("new");
newradioBtn.addEventListener("click",newChecked);

function SearchDis()
{
    var city1 = document.getElementById("city").value;
    console.log(city1);
    
    var e = document.getElementById("di");
    var disease1 = e.options[e.selectedIndex].value;
    
    console.log(disease1);
    
    $.post( "http://localhost:8080/Hospital/Combine", {
        city: city1,
        disease:disease1
    }, function( resp ) {
    	document.getElementById("diswise").innerHTML = resp; // server response
    });
    
}

function callNextForm(did)
{ 
	 $("#di").prop("disabled",true);
	 this.did=did;
	 var idname = "dname"+did;
	 var idhname = "hname"+did;
	 var iddmob = "mob"+did;
	 var idhaddress = "address"+did;
	 var name = $("#"+idname).text();
	 var hname = $("#"+idhname).text();
	 var dmob = $("#"+iddmob).text();
	 var haddress = $("#"+idhaddress).text();
	 console.log(name+"     "+hname+"     "+haddress+"      "+dmob);
	
	 $("#diswise").hide();
	 $("#did").val(this.did);
	 $("#fdname").val(name);
	 $("#fhname").val(hname);
	 $("#fhaddress").val(haddress);
	 $("#fdmob").val(dmob);
	 $("#appointmentForm").show();
	 $("#file-upload").hide();
	 
}

function oldChecked()
{
	 $("#file-upload").show();
	 getDoctorList();
}

function newChecked()
{
	 $("#file-upload").hide();
	 $("#list-doc").remove();
}

function onDataSubmit()
{

        var url = "http://localhost:8080/Hospital/AppointmentForm";
        var form = $("#appointmentFormMain");
        console.log(form[0]);
        var data = new FormData(form[0]);
        
        $.ajax({
            type : "POST",
            encType : "multipart/form-data",
            url : url,
            cache : false,
            processData : false,
            contentType : false,
            data : data,
            success : function(msg) {
            	idn=msg;
            	$("#prescription").prop("disabled",true);
            	$("#btnupload").removeAttr("href");
            	$('#emoji1').show();
        		
            },
            error : function(msg) {
            	$('#emoji2').show();
            	//alert("Couldn't upload file");
                
            }
        });
}

function getDoctorList()
{
	
	$.post( "http://localhost:8080/Hospital/GetDoctors",{di:$("#di").val()}, function( resp ) {
    	
    	
    	//resp = resp.trim().replace('[','').replace(']','');
    	
    	console.log("Rwsponse :- "+resp);
    //	console.log("doctor name :- "+resp.get(3));
    	    var map=resp;
    	    let abc = new Map();
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
            console.log("Map Javascript date : "+abc);
            var select = document.createElement("select");
   	  		select.name = "doctors";
   	  		select.id = "list-doc";
   	  		
   	  		abc.forEach( (value, key, abc) => {
   	  			var option = document.createElement("option");
   	  			option.value = key;
   	  			option.text = value;
   	  			select.appendChild(option);
   	  	
   	  		});
   	  		
   	  		document.getElementById("doctors-list").appendChild(select);
   	  		$("#list-doc").addClass("form-control");
	});
	    	 
}


function onSubmitFromData()
{
	if($("#old").prop("checked"))
	{
		 oldDoctorAppointment();
	}else
		{
		newDoctorAppointment();
		}
	
	
	
}

function oldDoctorAppointment()
{
	if(idn == "")
		{
			alert("Please Upload Prescription First...")
		}else
			{
				var didn = $("#did").val();
				var dscriptn = $("#dscript").val();
				var oldn;
				var e = document.getElementById("list-doc");
				oldn = e.options[e.selectedIndex].value;
				console.log("did :- "+didn);
				console.log("id :- "+idn);
				console.log("discript :- "+dscriptn);
				console.log("old :- "+oldn);
				$.post( "http://localhost:8080/Hospital/UpdateAppointmentForm", {
			        id: idn,
			        did:didn,
			        dscript:dscriptn,
			        old:oldn
			    }, function( resp ) {
			    	alert(resp); // server response
			    });
			}
}

function newDoctorAppointment()
{
	var didn = ($("#did").val()).trim();
	var dscriptn = $("#dscript").val();
	
	console.log("did :- "+didn);
	console.log("id :- "+idn);
	console.log("discript :- "+dscriptn);

	$.post( "http://localhost:8080/Hospital/AddNewDoctorAppointment", {
        did:didn,
        dscript:dscriptn
    }, function( resp ) {
    	//alert(resp); // server response
    	alert(resp);
    });
}

function showDoctorProfile(did)
{
	$.get( "http://localhost:8080/Hospital/GetDoctorProfile?did="+did, function( resp ) {
		console.log("Resp :- "+resp);
		
		//var jsps = JSON.stringify(resp);
       
		var json = JSON.parse(resp);
		
        $("#mdname").text(json.dname);
        $("#mdmob").text(json.dmob);
        $("#mdspec").text(json.dspec);
        $("#mhname").text(json.hname);
        $("#maddress").text(json.address);
        $("#mhmob").text(json.hmob);
        
        var review = json.reviews;
       var cards = "";
        for( i in review)
        	{
        		var star = "";
        		for(var j=0;j<5;j++)
        		{
        			if(j < review[i].stars)
        			{
        				star = star + "<span class='fa fa-star checked'></span>";
        			}else
        			{
        				star = star + "<span class='fa fa-star'></span>";
        			}
        		}
        		cards =cards + "<div class='col-sm-6 py-2'>" 
        							  +"<div class='card caardshado' style='background-image:linear-gradient(to right,#E76603,#F9E452)'>"
					        		  	+"<div class='card-body'>"
					        		  		+"<h5 class='card-title'>Name:-"+review[i].name+"</h5>"
					        		  		+"<p class='card-text'>Stars :-"+star+" </p>"
					        		  		+"<p class='card-text'>Comment :- "+review[i].comments+"</p>"
					        		  	+"</div>" 
					        		  +"</div>" 
					        	+"</div>";
        		
        	}
    	document.getElementById("doctorreviews").innerHTML = cards;
        //console.log(cards);
        //$('#doctor-profile-reviews').data(cards);
        $('#exampleModalCenter').modal({
			show : true
		});
    });
	
	/*
	$('#demo-modal').load('get-dynamic-data.php?modal=' + modal,
			function() {
		$('#exampleModalCenter').modal({
			show : true
		});
			});
	*/
}