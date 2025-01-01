/**
 * 
 */

let loginBtn = document.getElementById("Login");
loginBtn.addEventListener("click",Login);


 function Login()
 {
     console.log("Loginn Started");
     var userid = document.getElementById("uid");
     var password = document.getElementById("psw");
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
    
    xhr.open("POST","http://localhost:8080/Hospital/Login",true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
   // let fd = new FormData();

    xhr.onprogress = function() {
        console.log("Progress");
        console.log(userid.value);
        console.log(password.value);
    }

    xhr.onload = function() {
        if(this.status=200)
        {
        		alert("Login SuccessFul By user -"+userid.value+this.responseText);
        		location.href='Customer.html';	
        }else if(this.status=400)
        {
        	//document.getElementById("message").innerHTML=this.responseText;
        	alert(this.responseText);
         //   console.error("error Occured");
        }   
    }

    xhr.send("userid="+userid.value+"&password="+password.value);
}