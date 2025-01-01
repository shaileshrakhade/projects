



function mypass()
{
    var oldpass= document.getElementById("oldpass").value;
    var newpass= document.getElementById("newpass").value;
    var repass= document.getElementById("repass").value;
     var uid= document.getElementById("uid").value;
     
     
     
     
    if(uid=="")
    {
        document.getElementById("uidmsg").innerHTML="Field is Empty ";
        return false;
    }
    else
    {
        document.getElementById("uidmsg").innerHTML="";
    }
    
    if(oldpass=="")
    {
        document.getElementById("oldmsg").innerHTML="Field is Empty ";
        return false;
    }
    else
    {
        document.getElementById("oldmsg").innerHTML="";
    }
    
    
    
    
     if(newpass=="")
    {
        document.getElementById("newmsg").innerHTML="Field is Empty ";
        return false;
    }
     else
    {
        document.getElementById("newmsg").innerHTML="";
    }
    
    
    
    
     if(newpass.length < 5)
    {
        document.getElementById("newmsg").innerHTML="Paaword Is More Then 5 Words";
        return false;
    }
     else
    {
        document.getElementById("newmsg").innerHTML="";
    }
    
    
    
      if(newpass.length > 15)
    {
        document.getElementById("newmsg").innerHTML="Paaword Is less Then 15 Words";
        return false;
    }
     else
    {
        document.getElementById("newmsg").innerHTML="";
    }
    
    
    
     if(repass=="")
    {
        document.getElementById("repassmsg").innerHTML="Field is Empty ";
        return false;
    }
     else
    {
        document.getElementById("repassmsg").innerHTML="";
    }
    
    
    
    
    
      if(repass!=newpass)
    {
        document.getElementById("repassmsg").innerHTML="Password Not Match";
        return false;
    }
     else
    {
        document.getElementById("repassmsg").innerHTML="";
    }
}

