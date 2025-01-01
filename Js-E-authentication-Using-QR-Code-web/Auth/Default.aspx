<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Auth._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">


	<div class="container">
		<div class="hero">
			<h1 class="name"><strong>QR Code</strong> E-Authentication</h1>
			<span class="job-title">Developer</span>
			<span class="email">abc@gmail.com</span>

			<h2 class="lead">Development and design of web applications 
                for College Practical Purpose </h2>
		</div>
	</div>

<!-- Skills and intrest section -->
	<div class="container">

		<div class="sections">
			<h2 class="section-title">Skills</h2>

			<div class="list-card">
				<span class="exp">+ 3 years</span>
				<div>
					<h3>Object programming & frameworks</h3>
					<span>PHP, HTML, CSS, .NET, MySQL …</span>
				</div>
			</div>
			
			<div class="list-card">
				<span class="exp">+ 3 years</span>
				<div>
					<h3>Design integration</h3>
					<span>Style and tools, JS Frameworks</span>
				</div>
			</div>	
					
			<div class="list-card">
				<span class="exp">+ 6 years</span>
				<div>
					<h3>Windos</h3>
					<span>Scripting, Servers management and protocols, Automation</span>
				</div>
			</div>


		</div>
		<div class="sections">
				<h2 class="section-title">Interests</h2>
				
				<div class="list-card">
					<div>
						<h3>Scripting languages</h3>
						<span>PHP, JS, Java, MySQL,.NET</span>
					</div>
				</div>	

				<div class="list-card">
					<div>
						<h3>Hacking</h3>
						<span>Linux, Windows,  Network</span>
					</div>
				</div>		
		</div>
	</div>

	<!-- Achievements -->

	<div class="container cards">
		
		<div class="card">
			<div class="skill-level">
				<span>+</span>
				<h2>60</h2>
			</div>

			<div class="skill-meta">
				<h3>Projects</h3>
				<span>Adapting and creating solutions for customer's needs</span>
			</div>
		</div>

			
		<div class="card">
			<div class="skill-level">
				<h2>50</h2>
				<span>%</span>
			</div>

			<div class="skill-meta">
				<h3>Web</h3>
				<span>Applications development integrating third-party services and mobile client(s)</span>
			</div>
		</div>

			
		<div class="card">
			<div class="skill-level">
				<h2>30</h2>
				<span>%</span>
			</div>

			<div class="skill-meta">
				<h3>Technical solutions</h3>
				<span>Such as web services, scripts, configurations</span>
			</div>
		</div>


		<div class="card">
			<div class="skill-level">
				<h2>20</h2>
				<span>%</span>
			</div>

			<div class="skill-meta">
				<h3>Leading</h3>
				<span>Web projects and ensure the quality of delivery</span>
			</div>
		</div>

	</div>

	<!-- Timeeline -->

	<div class="container">
		<ol class="timeline">
		  <li>
		    <p class="line">Experiences</p>
		    <span class="point"></span>
		    <p class="description">
		      Project Devlopment 
		    </p>
		    <span class="date">2021</span>
		  </li>

		  <li>
		    <span class="point"></span>
		    <p class="description">
		       .Net & MySQL
		    </p>
		    <span class="date">Apr. 2016 - Sep. 2015</span>
		  </li>

		  		  <li>
		    <p class="line">Education</p>
		    <span class="point"></span>
		    <p class="description">
		      BCA Jajoo College, Yavtamal
		    </p>
		    <span class="date">2020 - 2021</span>
		  </li>

		  		  <li>
		    <span class="point"></span>
		    <p class="description">
		      computer software
		    </p>
		    <span class="date">2013 - 2008</span>
		  </li>
		</ol>

	</div>





</asp:Content>
