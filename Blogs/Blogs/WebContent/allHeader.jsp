<%-- 
    Document   : allHeader
    Created on : 12 Dec, 2020, 9:51:59 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/ce84bbae65.js" crossorigin="anonymous"></script>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <title>Online Teaching and Learning System</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            /* width */
            ::-webkit-scrollbar {
                width: 4px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                box-shadow: inset 0 0 6px grey; 
                border-radius: 4px;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: thistle; 
                border-radius: 4px;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: thistle; 
            }
        </style>
    </head>
    <body onload="spinStop()">
    
   
   
        <div id="spinLoader" class="container" style=" font-size: 35px; color: olivedrab; height: 700px; margin-top: 300px;">
            <center>
                <div class="spinner-border m-5" style=" margin-top: 300px; font-size: 35px; color: #c82333; width: 4rem; height: 4rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </center>
        </div>
        <div id="com_navbar" class="navbar-brand">
            <div class="row">
                <div class="col col-md-1">
                    &nbsp;
                </div>
                <div class="col col-md-1">
                    <img src="Images/logo.png" alt=""/> 
                </div>
                <div class="col col-md-2">
                    &nbsp;
                </div>
                <div class="col col-md-7">
                    <div class="row">
                        &nbsp;
                    </div>
                    <div class="row">
                    </div>
                    <div class="row">
                        <h5 style="color: #536D81;">Department of Computer Science & Engineering</h5>
                    </div>
                    <div class="row">
                        <h3 style="color: #536D81; font-family: Cambria Math; font-weight: bold">Online Teaching & Learning System</h3>
                    </div>
                    <div class="row ">
                        &nbsp;
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light com_navbar">
            &nbsp; &nbsp; &nbsp;
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Courses
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="course_ME.jsp">ME</a>
                            <a class="dropdown-item" href="course_MCA.jsp">MCA</a>
                            <a class="dropdown-item" href="course_MSc.jsp">MSc</a>
                            <a class="dropdown-item" href="course_PGDCS.jsp">PGDCS</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="syllabus.jsp">Syllabus</a>
                    </li>
                </ul>
                <div class="form-inline my-2 my-lg-0" style="right: 200px;">
                    <a href="about_us.jsp" class="btn btn-outline-secondary my-2 my-sm-0"><i class="fas fa-address-card"> About Us</i></a> &nbsp;
                    <a href="login.jsp" class="btn btn-outline-primary my-2 my-sm-0"><i class="fas fa-sign-in-alt"> Log In</i></a> &nbsp; &nbsp;
                </div>
            </div>
        </nav>