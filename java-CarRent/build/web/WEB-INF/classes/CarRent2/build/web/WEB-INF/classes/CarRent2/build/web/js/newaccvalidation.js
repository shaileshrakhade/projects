function validation()
{
    var fname= document.getElementById("fname").value;
     var mname= document.getElementById("mname").value;
      var sname= document.getElementById("sname").value;
    
    var mobile_no= document.getElementById("mobile_no").value;
    var email= document.getElementById("email").value;
     var dob= document.getElementById("dob").value;
      var dist= document.getElementById("dist").value;
      var state= document.getElementById("state").value;
    var userid= document.getElementById("userid").value;
    var pass= document.getElementById("pass").value;
     var repass= document.getElementById("repass").value;
    var userid1 = document.getElementById("userid1").value;
     
   // name validation 
   
    if(fname=="")
    {
        document.getElementById("msgname").innerHTML="Field is Empty ";
        return false;
    } 
   
    
    else if(mname=="")
    {
           document.getElementById("msgname").innerHTML="Field is Empty ";
        return false;
    }
    else if(sname=="")
    {
           document.getElementById("msgname").innerHTML="Field is Empty ";
        return false;
    }
    else
    {
        document.getElementById("msgname").innerHTML="";
    }
    
    
    //not less than 5 
      if(fname.length<3)
    {
        document.getElementById("msgname").innerHTML="Name is More then 3 word";
        return false;
    }
    else if(mname.length<3)
    {
           document.getElementById("msgname").innerHTML="Name is More then 3 word";
        return false;
    }
    else if(sname.length<3)
    {
           document.getElementById("msgname").innerHTML="Name is More then 3 word";
        return false;
    }
    else
    {
        document.getElementById("msgname").innerHTML="";
    }
    
    //not gretor then 15
        if(fname.length>15)
    {
        document.getElementById("msgname").innerHTML="Name is Not More then 15 word";
        return false;
    }
    else if(mname.length>15)
    {
           document.getElementById("msgname").innerHTML="Name is Not More then 15 word";
        return false;
    }
    else if(sname.length>15)
    {
           document.getElementById("msgname").innerHTML="Name is Not More then 15 word";
        return false;
    }
    else
    {
        document.getElementById("msgname").innerHTML="";
    }
    //mobile number validation
    
     if ((mobile_no.charAt(0)!=9) && (mobile_no.charAt(0)!=8) && (mobile_no.charAt(0)!=7))
    {
        document.getElementById("msg_mobile_no").innerHTML="Mobile Number Is Start With 9,8,7";
        return false;
    }
     else if (isNaN(mobile_no))
    {
        document.getElementById("msg_mobile_no").innerHTML="Mobile Number Is Numaric Only";
        return false;
    }
     else
    {
        document.getElementById("msg_mobile_no").innerHTML="";
    }

    
      if(mobile_no.length <10)
    {
        document.getElementById("msg_mobile_no").innerHTML="Mobile Number Is Not Valid";
        return false;
    }
     else
    {
        document.getElementById("msg_mobile_no").innerHTML="";
    }
    
     if(mobile_no.length >10)
    {
        document.getElementById("msg_mobile_no").innerHTML="Mobile Number Is Not Valid";
        return false;
    }
     else
    {
        document.getElementById("msg_mobile_no").innerHTML="";
    }
    
    
    //validation for email
    if(email=="")
    {
        document.getElementById("msgemail").innerHTML="Field is Empty";
        return false;
    }
    else
    {
           document.getElementById("msgemail").innerHTML="";
        
    }
    
    
    
    //validation for date of birth
    
      if(dob=="")
    {
        document.getElementById("msgdob").innerHTML="Field is Empty";
        return false;
    }
    else
    {
           document.getElementById("msgdob").innerHTML="";
        
    }
    
    
    
    
    //validation district
      if(dist=="")
    {
        document.getElementById("msgdist").innerHTML="Field is Empty";
        return false;
    }
    
    else
    {
           document.getElementById("msgdist").innerHTML="";
       
    }
    
    //validation for state
    
      if(state=="")
    {
        document.getElementById("msgstate").innerHTML="Field is Empty";
        return false;
    }
    else
    {
           document.getElementById("msgstate").innerHTML="";
       
    }
    
    //validation for user id
       if(userid==="")
    {
        document.getElementById("msguserid").innerHTML="Field is Empty";
        return false;
    }
     else if(userid==userid1)
    {
        document.getElementById("msguserid").innerHTML="exist";
        return false;
    }
      else if(userid.length <5)
    {
        document.getElementById("msguserid").innerHTML="User Id is More Then 5 Words";
        return false;
    }
    
    
     else if(userid.length >25)
    {
        document.getElementById("msguserid").innerHTML="User Id is Less Then 25 Words";
        return false;
    }
    
    
    else
    {
           document.getElementById("msguserid").innerHTML="";
       
    }
    
    
    
    //validation fro pass
       if(pass==="")
    {
        document.getElementById("msgpass").innerHTML="Field is Empty";
        return false;
    }
     else if(pass.length <5)
    {
        document.getElementById("msgpass").innerHTML="Password is More Then 5 Words";
        return false;
    }
    
    
     else if(pass.length >25)
    {
        document.getElementById("msgpass").innerHTML="Password is Less Then 25 Words";
        return false;
    }
    else
    {
           document.getElementById("msgpass").innerHTML="";
       
    }
    
    //validation for repass
    
       if(repass==="")
    {
        document.getElementById("msgrepass").innerHTML="Field is Empty";
        return false;
    }
    else
    {
           document.getElementById("msgrepass").innerHTML="";
       
    }
    
    
        if(pass!=repass)
    {
        document.getElementById("msgrepass").innerHTML="Password Not Match";
        return false;
    }
    else
    {
           document.getElementById("msgrepass").innerHTML="";
       
    }
    
}