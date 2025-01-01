<%-- 
    Document   : newjsp
    Created on : Jan 17, 2019, 9:31:25 AM
    Author     : Shailesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="../css/login.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../js/login_pop_up.js" type="text/javascript"></script>
       
        <title>JSP Page</title>
    </head>
    <body>
    <body>
  <!-- login pop up-->
        <div class="bg-model">
            <div class="model-content">
                <div class="close"> <a>+</a> </div>
                <div class="login">
                    <h2>Login</h2>
                <form>
                     <input type="text" placeholder="Username">
                     <input type="password" placeholder="password">
                     <input type="submit" name="submit" class="log">
                     
                     <a href="#" id="sign_in">Sign In</a>
                     <p>
                         <a href="#" id="forgot_password">Forgot Password?</a>
                     </p>
                </form>
                    </div>
            </div>
        </body>
</html>



<script>
    
    
       document.getElementById('button').addEventListener('click',function()
{
             document.querySelector('.bg-model').style.display='flex';
}
        );

    document.querySelector('.log').addEventListener('click',function()
        {
            document.querySelector('.bg-model').style.display='none';
        }
        );
    document.querySelector('.close').addEventListener('click',function()
        {
            document.querySelector('.bg-model').style.display='none';
        }
        );
</script>
