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
        <title>Teacher Navbar</title>
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
                    <li>
                        <a href="#">Classes</a>
                    </li>
                    <li>
                        <a href="#">Attendance</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#createAssignment" data-toggle="collapse" aria-expanded="false">Assignments</a>
                        <ul class="collapse list-unstyled" id="createAssignment">
                            <li><a href="#">Create</a></li>
                            <li><a href="#">View</a></li>
                            <li><a href="#">Submissions</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Subjects</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#createPractical" data-toggle="collapse" aria-expanded="false">Practicals</a>
                        <ul class="collapse list-unstyled" id="createPractical">
                            <li><a href="#">Create</a></li>
                            <li><a href="#">View</a></li>
                            <li><a href="#">Submissions</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Timetable</a>
                    </li>
                    <li>
                        <a href="#">Internal Marks</a>
                    </li>
                    <li>
                        <a href="#">Inbox</a>
                    </li>
                    <li>
                        <a href="#">Notification</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#ecl" data-toggle="collapse" aria-expanded="false">E-Contents & Library</a>
                        <ul class="collapse list-unstyled" id="ecl">
                            <li><a href="#">Text Books</a></li>
                            <li><a href="#">Reference Books</a></li>
                            <li><a href="#">Topicwise Videos</a></li>
                            <li><a href="#">YouTube Videos</a></li>
                            <li><a href="#">NPTEL</a></li>
                            <li><a href="#">Swayam</a></li>
                            <li><a href="#">Different Channels</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#Downloads" data-toggle="collapse" aria-expanded="false">Downloads</a>
                        <ul class="collapse list-unstyled" id="Downloads">
                            <li><a href="#">Academic Calendar</a></li>
                            <li><a href="#">Syllabus</a></li>
                            <li><a href="#">Project & Seminar Format</a></li>
                            <li><a href="#">Previous Years Papers</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#event" data-toggle="collapse" aria-expanded="false">Events</a>
                        <ul class="collapse list-unstyled" id="event">
                            <li><a href="#">FREE ONLINE COURSE LINK</a></li>
                            <li><a href="#">WEBINARS</a></li>
                            <li><a href="#">SEMINARS</a></li>
                            <li><a href="#">WORKSHOP</a></li>
                            <li><a href="#">HANDS-ON WORKSHOP</a></li>
                            <li><a href="#">STTP</a></li>
                            <li><a href="#">CONFERENCES</a></li>
                            <li><a href="#">SYMPOSIUM</a></li>
                            <li><a href="#">AWARENESS PROGRAM</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#brCourses" data-toggle="collapse" aria-expanded="false">Bridge Courses</a>
                        <ul class="collapse list-unstyled" id="brCourses">
                            <li><a href="#">Fundamental CS</a></li>
                            <li><a href="#">Operating System</a></li>
                            <li><a href="#">All Basic Subjects</a></li>
                            <li><a href="#">Programming Logic With Demo's</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#QuestionBank" data-toggle="collapse" aria-expanded="false">Question Bank</a>
                        <ul class="collapse list-unstyled" id="QuestionBank">
                            <li><a href="#">Short Answer</a></li>
                            <li><a href="#">Long Answer</a></li>
                            <li><a href="#">Test Series</a></li>
                            <li><a href="#">MCQ's</a></li>
                            <li><a href="#">Quiz</a></li>
                            <li><a href="#">Assignments</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Training & Placement</a>
                    </li>
                    <li>
                        <a href="#">Gallery and Latest News</a>
                    </li>
                    <li>
                        <a href="#">Guidelines</a>
                    </li>
                    <li>
                      <a href="../Blogs/TeacherBlogs/teacher_Blogs.jsp">Blogs</a>
                    </li>
                    <li>
                        <a href="#">Discussion & FAQ</a>
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