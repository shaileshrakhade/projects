
let CityBtn = document.getElementById("CityBtn");
CityBtn.addEventListener("click",SearchCt);


 function SearchCt()
 {
     console.log("City Search Started");
     var city = document.getElementById("city");
     var disease = document.getElementById("city");
    // var password = document.getElementById("psw");
    //const xhr = new XMLHttpRequest();
    
    var xhr = false;
    if (window.XMLHttpRequest)
    {
    	xhr = new XMLHttpRequest(); //To support the browsers IE7+, Firefox, Chrome, Opera, Safari
    }
    else if(window.ActiveXObject)
    {
    	xhr =new ActiveXObject("Microsoft.XMLHTTP"); // For the browsers IE6, IE5 
    }
    else
    {
    	alert("Error due to old verion of browser upgrade your browser");
    }
    
    xhr.open("POST","http://localhost:8080/Hospital/CtSearch",true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
   // let fd = new FormData();

    xhr.onprogress = function() {
     //   console.log(city.value);
        //console.log(userid.value);
        //console.log(password.value);
    }

    xhr.onload = function() {
        if(this.status=200)
        {
            document.getElementById("ctwise").innerHTML = this.responseText;
        }else if(this.status=400)
        {
        	document.getElementById("ctwise").innerHTML=this.responseText;
        //	alert(this.responseText);
         //   console.error("error Occured");
        }   
    }
   // console.log(city);    
    xhr.send("disease="+disease.value);
}