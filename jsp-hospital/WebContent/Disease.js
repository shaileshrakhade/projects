let disBtn = document.getElementById("disBtn");
disBtn.addEventListener("click",SearchDis);


 function SearchDis()
 {
     console.log("City Search Started");
   //  var city = document.getElementById("disease");
     var disease = document.getElementById("di");
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
    
    xhr.open("POST","http://localhost:8080/Hospital/DisSearch",true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
   // let fd = new FormData();

    xhr.onprogress = function() {
        console.log(di.value);
        //console.log(userid.value);
        //console.log(password.value);
    }

    xhr.onload = function() {
        if(this.status=200)
        {
            document.getElementById("diswise").innerHTML = this.responseText;
        }else if(this.status=400)
        {
        	document.getElementById("diswise").innerHTML=this.responseText;
        //	alert(this.responseText);
         //   console.error("error Occured");
        }   
    }
   // console.log(city);    
    xhr.send("disease="+di.value);
}
 
window.onload = function() {
    var xhr = new XMLHttpRequest();
    xhr.open("POST","http://localhost:8080/Hospital/GetDisease",true);
    xhr.onprogress = function()
    {
        console.log("Page Progressing");
    }

    xhr.onload = function() {
    	var arr = this.responseText.split(",");
         // a = str.split(",");
    	  var select = document.createElement("select");
    	  select.name = "disease";
    	  select.id = "di"
    	 
    	  for (const val of arr) {
    	    var option = document.createElement("option");
    	    option.value = val.trim().replace('[','').replace(']','');
    	    option.text = val.trim().replace('[','').replace(']','') + val.slice(1);
    	    select.appendChild(option);
    	  }
    	 
    	  var label = document.createElement("label");
    	  label.innerHTML = "Choose your disease: "
    	  label.htmlFor = "disease";
    	 
    	  document.getElementById("disease").appendChild(label).appendChild(select);
        //console.log(this.responseText)
    }
    xhr.send();
}
