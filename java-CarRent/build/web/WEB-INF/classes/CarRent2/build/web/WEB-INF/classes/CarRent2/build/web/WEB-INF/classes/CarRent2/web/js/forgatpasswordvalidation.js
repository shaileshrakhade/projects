function myforgetpass()
{
    var mob= document.getElementById("mob").value;
    var fname= document.getElementById("fname").value;
    var uid= document.getElementById("uid").value;
     var dob= document.getElementById("dob").value;
     
    if(mob=="")
    {
        document.getElementById("msgmob").innerHTML="Field is Empty";
        return false;
    }
    else
    {
        document.getElementById("msgmob").innerHTML="";
    }
    
       if(mob.length <10)
    {
        document.getElementById("msgmob").innerHTML="Mobile Number Is Not Valid";
        return false;
    }
     else
    {
        document.getElementById("msgmob").innerHTML="";
    }
    
     if(mob.length >10)
    {
        document.getElementById("msgmob").innerHTML="Mobile Number Is Not Valid";
        return false;
    }
     else
    {
        document.getElementById("msgmob").innerHTML="";
    }
    
    
    if ((mob.charAt(0)!=9) && (mob.charAt(0)!=8) && (mob.charAt(0)!=7))
    {
        document.getElementById("msgmob").innerHTML="Mobile Number Is Not Valid";
        return false;
    }
     else
    {
        document.getElementById("msgmob").innerHTML="";
    }
    
    
    
    
    
    
    
    
    
    if(fname=="")
    {
        document.getElementById("msgfname").innerHTML="Field is Empty";
        return false;
    }
    else
    {
        document.getElementById("msgfname").innerHTML="";
    }
    
    
    
    
     if(uid=="")
    {
        document.getElementById("msguid").innerHTML="Field is Empty";
        return false;
    }
     else
    {
        document.getElementById("msguid").innerHTML="";
    }
    
    
    
      if(dob=="")
    {
        document.getElementById("msgdob").innerHTML="Field is Empty";
        return false;
    }
     else
    {
        document.getElementById("msgdob").innerHTML="";
    }
    
    
    

    

}


