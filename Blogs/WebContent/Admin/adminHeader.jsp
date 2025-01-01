<%-- 
    Document   : adminHeader
    Created on : 15 Dec, 2020, 11:51:21 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../bootstrap-4.5.0-dist/css/sidebarmenu.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>[Admin]-Online Teaching and Learning System</title>
    </head>
    <body onload="spinStop()">
        <div id="com_navbar" class="com_navbar">
            <div class="row">
                &nbsp;&nbsp;
                <div class="col col-md-2">
                    <img src="Images/logo.png" alt=""/>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col col-md-7">
                    <div class="row-2">
                        <br/><br/>
                    </div>
                    <div class="row ">
                        &nbsp;
                    </div>
                    <div class="row ">
                        &nbsp;
                    </div>
                    <div class="row">
                        <h5 style="color: #536D81;">Department of Computer Science & Engineering</h5>
                    </div>
                    <div class="row">
                        <h3 style="color: #536D81; font-family: Cambria Math; font-weight: bold">Online Teaching & Learning System</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="dropdown-divider"></div>
        <div class="wrapper">
            <nav id="sidebar">
                <ul class="list-unstyled components">
                    <li>
                        <a href="#">Home</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#stud" data-toggle="collapse" aria-expanded="false">Student Management</a>
                        <ul class="collapse list-unstyled" id="stud">
                            <li><a href="#">Add Student</a></li>
                            <li><a href="#">Update Student</a></li>
                            <li><a href="#">Remove Student</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#teacher" data-toggle="collapse" aria-expanded="false">Teacher Management</a>
                        <ul class="collapse list-unstyled" id="teacher">
                            <li><a href="#">Add Teacher</a></li>
                            <li><a href="#">Update Teacher</a></li>
                            <li><a href="#">Remove Teacher</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#class" data-toggle="collapse" aria-expanded="false">Class Management</a>
                        <ul class="collapse list-unstyled" id="class">
                            <li><a href="#">Add Class</a></li>
                            <li><a href="#">Update Class</a></li>
                            <li><a href="#">Archive Class</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#brCourses" data-toggle="collapse" aria-expanded="false">Bridge Courses Management</a>
                        <ul class="collapse list-unstyled" id="brCourses">
                            <li><a href="#">Add Course</a></li>
                            <li><a href="#">Remove Courses</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#reports" data-toggle="collapse" aria-expanded="false">Reports</a>
                        <ul class="collapse list-unstyled" id="reports">
                            <li><a href="#">Assign Work</a></li>
                            <li><a href="#">Return Work</a></li>
                            <li><a href="#">Grade</a></li>
                            <li><a href="#">Missing Work</a></li>
                            <li><a href="#">Staff</a></li>
                            <li><a href="#">Long Answer</a></li>
                            <li><a href="#">Assignments</a></li>
                            <li><a href="#">Attendance</a></li>
                            <li><a href="#">Quiz</a></li>
                            <li><a href="#">Open Elective</a></li>
                            <li><a href="#">Unit Test</a></li>
                            <li><a href="#">Short Answer</a></li>
                            <li><a href="#">Staff-wise</a></li>
                            <li><a href="#">Subject-wise</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Time Table Management</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#addEvent" data-toggle="collapse" aria-expanded="false">Event Management</a>
                        <ul class="collapse list-unstyled" id="addEvent">
                            <li><a href="#">Add FREE ONLINE COURSE LINK</a></li>
                            <li><a href="#">Add WEBINARS</a></li>
                            <li><a href="#">Add SEMINARS</a></li>
                            <li><a href="#">Add WORKSHOP</a></li>
                            <li><a href="#">Add HANDS-ON WORKSHOP</a></li>
                            <li><a href="#">Add STTP</a></li>
                            <li><a href="#">Add CONFERENCES</a></li>
                            <li><a href="#">Add SYMPOSIUM</a></li>
                            <li><a href="#">Add AWARENESS PROGRAM</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#uecl" data-toggle="collapse" aria-expanded="false">E-Contents & Library</a>
                        <ul class="collapse list-unstyled" id="uecl">
                            <li><a href="#">Add Text Books</a></li>
                            <li><a href="#">Add Reference Books</a></li>
                            <li><a href="#">Add Topicwise Videos</a></li>
                            <li><a href="#">Add YouTube Videos</a></li>
                            <li><a href="#">NPTEL</a></li>
                            <li><a href="#">Swayam</a></li>
                            <li><a href="#">Channels</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#updateDownloads" data-toggle="collapse" aria-expanded="false">Download Management</a>
                        <ul class="collapse list-unstyled" id="updateDownloads">
                            <li><a href="#">Update Academic Calendar</a></li>
                            <li><a href="#">Update Syllabus</a></li>
                            <li><a href="#">Update Project & Seminar Format</a></li>
                            <li><a href="#">Add Previous Years Papers</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Feedback</a>
                    </li>
                    <li>
                        <a href="#">Training & Placement</a>
                    </li>
                    <li>
                        <a href="#">Gallery</a>
                    </li>
                    <li>
                        <a class="logout btn btn-info" href="#"><i class="fa fa-sign-out" aria-hidden="true"></i>&nbsp;Logout</a>
                    </li>
                </ul>
            </nav>
            <div class="content">
                <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
                    <button id="sidebarCollapse" class="btn btn-info" type="button">
                        <i class="fa fa-align-justify"></i><span>&nbsp;Menu</span>
                    </button>
                    <button class="navbar-toggler" type="button" data-toggler="collapse" 
                            data-target="#navbarNav" area-controls="navbarNav" area-expanded="false"
                            area-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </nav>
                <div class="content-wrapper">