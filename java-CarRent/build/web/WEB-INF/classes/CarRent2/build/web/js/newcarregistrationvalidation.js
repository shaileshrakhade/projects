function carvalidation()
{
   
    var vehiclename= document.getElementById("vehiclename").value;
     var Engine= document.getElementById("Engine").value;
      var vehicleno= document.getElementById("vehicleno").value;
    var passing= document.getElementById("passing").value;
    var yearpurchase= document.getElementById("yearpurchase").value;
     var color= document.getElementById("color").value;
     var aboutdriver= document.getElementById("aboutdriver").value;
      var Price_Non_ac= document.getElementById("Price_Non_ac").value;
    var Price_ac= document.getElementById("Price_ac").value;
     
     
     
     
     
     //vihical name validtion
         if(vehiclename==="")
    {
        document.getElementById("msgvehiclename").innerHTML="Field is Empty ";
        return false;
    }
    else
    {
        document.getElementById("msgvehiclename").innerHTML="";
    }
    
    
    //engine
    
             if(Engine==="")
    {
        document.getElementById("msgEngine").innerHTML="Field is Empty ";
        return false;
    }
    else if(Engine.length <5)
    {
        document.getElementById("msgEngine").innerHTML=" Is More Then 5 Words";
        return false;
    }
    
    
     else if(Engine.length >25)
    {
        document.getElementById("msgEngine").innerHTML=" Is Less Then 25 Words";
        return false;
    }
    else
    {
        document.getElementById("msgEngine").innerHTML="";
    }
    
    
    
    //vihical number
    
    
             if(vehicleno==="")
    {
        document.getElementById("msgvehicleno").innerHTML="Field is Empty ";
        return false;
    }
    else if(vehicleno.length <10)
    {
        document.getElementById("msgvehicleno").innerHTML="Valid Format AA00-AA-0000";
        return false;
    }
    
    
     else if(vehicleno.length >10)
    {
        document.getElementById("msgvehicleno").innerHTML="Valid Format AA00-AA-0000";
        return false;
    }
    else
    {
        document.getElementById("msgvehicleno").innerHTML="";
    }
    
    
    
    //passing  state
    
             if(passing==="")
    {
        document.getElementById("msgpassing").innerHTML="Field is Empty ";
        return false;
    }
    else if(passing.length <5)
    {
        document.getElementById("msgpassing").innerHTML=" Is More Then 5 Words";
        return false;
    }
    
    
     else if(passing.length >25)
    {
        document.getElementById("msgpassing").innerHTML=" Is Less Then 25 Words";
        return false;
    }
    else
    {
        document.getElementById("msgpassing").innerHTML="";
    }
    
    
    //perchess year
    
             if(yearpurchase==="")
    {
        document.getElementById("msgyearpurchase").innerHTML="Field is Empty ";
        return false;
    }
     else if(isNaN(yearpurchase))
    {
        document.getElementById("msgyearpurchase").innerHTML=" Is Numaric Only";
        return false;
    }
    else if(yearpurchase.length <4)
    {
        document.getElementById("msgyearpurchase").innerHTML=" Is More Then 3 Words";
        return false;
    }
    
    
     else if(yearpurchase.length >4)
    {
        document.getElementById("msgyearpurchase").innerHTML=" Is Less Then 5 Words";
        return false;
    }
    else
    {
        document.getElementById("msgyearpurchase").innerHTML="";
    }
    
    
    //color
    
             if(color==="")
    {
        document.getElementById("msgcolor").innerHTML="Field is Empty ";
        return false;
    }
    else if(color.length <3)
    {
        document.getElementById("msgcolor").innerHTML=" is More Then 3 Words";
        return false;
    }
    
    
     else if(color.length >10)
    {
        document.getElementById("msgcolor").innerHTML="Color is Less Then 25 Words";
        return false;
    }
    
    else
    {
        document.getElementById("msgcolor").innerHTML="";
    }
    
    
    //about driver
    
    
             if(aboutdriver==="")
    {
        document.getElementById("msgaboutdriver").innerHTML="Field is Empty ";
        return false;
    }
    else if(aboutdriver.length <5)
    {
        document.getElementById("msgaboutdriver").innerHTML=" Is More Then 5 Words";
        return false;
    }
    
    
     else if(aboutdriver.length >100)
    {
        document.getElementById("msgaboutdriver").innerHTML="Is Less Then 100 Words";
        return false;
    }
    else
    {
        document.getElementById("msgaboutdriver").innerHTML="";
    }
    
    
    //price non ac
    
    if(Price_Non_ac==="")
    {
        document.getElementById("msgPrice_Non_ac").innerHTML="Field is Empty ";
        return false;
    }else if(isNaN(Price_Non_ac))
    {
        document.getElementById("msgPrice_Non_ac").innerHTML="Price is Numaric Only";
        return false;
    }
    else if(Price_Non_ac.length <1)
    {
        document.getElementById("msgPrice_Non_ac").innerHTML="Price is More Then 1 Digits";
        return false;
    }
    else if(Price_Non_ac.length >5)
    {
        document.getElementById("msgPrice_Non_ac").innerHTML="Price is More Then 5 Digits";
        return false;
    }
    else
    {
        document.getElementById("msgPrice_Non_ac").innerHTML="";
    }
    
    
    
    //price ac
       if(Price_ac==="")
    {
        document.getElementById("msgPrice_ac").innerHTML="Field is Empty ";
        return false;
    }
     else if(isNaN(Price_ac))
    {
        document.getElementById("msgPrice_ac").innerHTML="Price is Numaric Only";
        return false;
    }
    else if(Price_ac.length <1)
    {
        document.getElementById("msgPrice_ac").innerHTML="Price is More Then 1 Digits";
        return false;
    }
    else if(Price_ac.length >5)
    {
        document.getElementById("msgPrice_ac").innerHTML="Price is More Then 4 Digits";
        return false;
    }
    
    
    
    else
    {
        document.getElementById("msgPrice_ac").innerHTML="";
    }
    
 }