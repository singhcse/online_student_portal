<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<style type="text/css">
<!--
html, body {
	background-image: url(images/img.gif);
}
</style>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Innovative JNU</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#menu > ul').dropotron({
			mode: 'fade',
			globalOffsetY: 11,
			offsetY: -15
		});
		$('#slider').slidertron({
			viewerSelector: '.viewer',
			indicatorSelector: '.indicator span',
			reelSelector: '.reel',
			slidesSelector: '.slide',
			speed: 'slow',
			advanceDelay: 4000
		});
	});
	
		function validate(){  
		var username=document.myform.fname.value;
		var status=false;  
		if(username.length<1)
		{  
			document.getElementById("nameloc").innerHTML=  
			"<img src='images/unchecked.gif'/> your name cannot be blank";  
			status=false;  
		}
		else
		{  
			document.getElementById("nameloc").innerHTML="<img src='images/checked.gif'/>";  
			status=true;  
		}
		}
		function validate1(){  
			var username=document.myform.lname.value;
			var status=false;  
			if(username.length<1)
			{  
				document.getElementById("nameloc1").innerHTML=  
				"<img src='images/unchecked.gif'/> your last name cannot be blank";  
				status=false;  
			}
			else
			{  
				document.getElementById("nameloc1").innerHTML="<img src='images/checked.gif'/>";  
				status=true;  
			}
			}
		function validate2(){  
			var username=document.myform.uname.value;
			var status=false;  
			if(username.length<1)
			{  
				document.getElementById("nameloc3").innerHTML=  
				"<img src='images/unchecked.gif'/> your user name cannot be blank";  
				status=false;  
			}
			else
			{  
				document.getElementById("nameloc3").innerHTML="<img src='images/checked.gif'/>";  
				status=true;  
			}
			}
		function validate3(){
		var password=document.myform.pass.value;
		var status=false;
		if(password.length<5)
		{  
			document.getElementById("passloc").innerHTML=  
			"<img src='images/unchecked.gif'/> Please enter your correct password";  
			status=false;  
		}
		else
		{  
			document.getElementById("passloc").innerHTML="<img src='images/checked.gif'/>";  
			status=true;  
		}
		}
		
		function validate4(){
			var barcode=document.myform.barcode.value;
			var status=false;
			if(barcode.length>6 || barcode.length<6){
				document.getElementById("nameloc4").innerHTML=
					"<img src='images/unchecked.gif'/> Please enter your correct barcode number";
					status=false;
			}
			else{
				document.getElementById("nameloc4").innerHTML="<img src='images/checked.gif'/>";
				status=true;
			}
		}
		
		
		function validateemail()  
		{  
		var x=document.myform.email.value;  
		var atposition=x.indexOf("@");  
		var dotposition=x.lastIndexOf(".");  
		if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
		{ 
			document.getElementById("emailloc").innerHTML="<img src='images/unchecked.gif'/> Please enter your correct email";  
				status=false; 
		}
		else
		{

			document.getElementById("emailloc").innerHTML="<img src='images/checked.gif'/>";  
			status=true; 
		}
		
		}
</script>
<style>
</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="logo">
				<h1>
					<a href="#">Innovative JNU</a>
				</h1>
			</div>
		</div>
		<div id="menu">
			<ul>
				<li class="last" id="title"><a href="Home.jsp">Home</a></li>
				<li class="last" id="title"><a href="#">Help</a></li>
			</ul>
			<br class="clearfix" />
		</div>
		<div id="slider">
			<div class="viewer">
				<div class="reel">
					<div class="slide">
						<img src="images/slide005.jpg" alt="" />
					</div>
					<div class="slide">
						<img src="images/slide002.jpg" alt="" />
					</div>
					<div class="slide">
						<img src="images/slide007.png" alt="" />
					</div>
				</div>
			</div>
			<div class="indicator">
				<span>1</span> <span>2</span> <span>3</span>
			</div>
		</div>

		<div id="page">
			<div id="content3">
				<div class="box" style="margin: 5px;">
					<fieldset style="border: thin">
						<p style="margin-left: 5px;">
							<marquee id="ctl00_rightContainer_LblPanel2_panel2"
								scrollamount="1" scrolldelay="50" align="justify" direction="up"
								onmouseout="this.start()" onmouseover="this.stop()">
					
					Now You can Share Your any Innovative idea.You can discuss any topics with group of students or faculty member of JNU.
					Simply just Register Yourself and Do login After that click on Post Idea Link as shown above.
					And After selecting Your course and stream YOu can post Your idea Simply.This will be visible
					to students of your stream and faculty members . In advice section you can also give advice by which we can improve our work. 
			</p>
						</marquee>
					</fieldset>
				</div>
			</div>
			<div id="sidebar12">
				<div class="box">
					<tr>
						<th colspan="2" scope="col">
							<div class="box1">
								<marquee>
									<h2>
										<font color="#000000"><br>Welcome in Innovative JNU.</font>
									</h2>
								</marquee>
							</div>
							<br>
						</th>
					</tr>
					<th width="80%" scope="col">
						<form method="post" action="registration.jsp" name="myform">
							<table width="100%" border="0" align="right" cellpadding="2"
								cellspacing="2"
								background-color:"#FFFFFF"; style="border: #000000 solid 2px; padding: 5px; alignment-adjust: left;style="font-weight:normal;">
								<tr>
									<th colspan="3" bgcolor="#000000" scope="col"><font
										color="#FFFFFF">User Registration</font></th>
								</tr>
								<tr>
									<td width="28%" rowspan="12"><div align="center">
											<img src="images/kdmconfig.png" width="48" height="48" />
										</div></td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<body>
								<tr>
									<td>First Name</td>
									<td><input type="text" name="fname" value="" id="fname"
										onblur="return validate()" style="height:30px; width:240px" placeholder="Enter First Name" /><span id="nameloc"></span></td>
								</tr>
								<tr>
									<td>Last Name</td>
									<td><input type="text" name="lname" id="lname" value=""
										onblur="return validate1()" style="height:30px; width:240px" placeholder="Enter Last Name"/><span id="nameloc1"></span></td>
								</tr>
								<tr>
									<td>Email</td>
									<td><input type="text" name="email" value=""
										onblur="return validateemail()" style="height:30px; width:240px" placeholder="Enter User Email-Id" /><span id="emailloc"></span></td>
								</tr>
								<tr>
									<td>User Name</td>
									<td><input type="text" name="uname" value=""
										onblur="return validate2()" style="height:30px; width:240px" placeholder="Enter User Name" /><span id="nameloc3"></span></td>
								</tr>
								<tr>
									<td>Student Barcode</td>
									<td><input type="text" name="barcode" value=""
										onblur="return validate4()" style="height:30px; width:240px" placeholder="Enter Student Barcode" /><span id="nameloc4"></span></td>
								</tr>
								<tr>
									<td>Password</td>
									<td><input type="password" name="pass" value=""
										onblur="return validate3()" style="height:30px; width:240px" placeholder="Enter User Password"/><span id="passloc"></span></td>
								</tr>
								<tr>
									<td></td><td><input type="submit" value="  Submit  " />
									<input type="reset" value="  Reset   " /></td>
								</tr>
								<tr>
									<td colspan="2"><br>
									<b>Already registered!!</b><a href="Home.jsp">Login Here</a></td>
								</tr>
							</table>
				</div>
			</div>
			</form>

			<br class="clearfix" />
		</div>
		<div id="page-bottom">
			<div id="page-bottom-content">
				<h3>Connect Globe</h3>
				<p>Now You can Share Your Academics related Problem such as some query related to any faculty</strong>.
					Simply just Register Yourself and Do login After that click on Post Report Link as shown above.
					And After selecting Your subject and location YOu can post Your matter Simply.This will be visible
					to every visitors and our Supporters will try to proceed it further.</p>
					
			</div>
			<div id="page-bottom-sidebar">
				<h3>Social Media links</h3>
			<ul class="list">
				<li><a href="http://www.jnujaipur.ac.in/">Main website</a></li>
				<li><a href="https://www.facebook.com/jaipurnationaluniv">Facebook</a></li>
				<li><a href="https://twitter.com/jaipurjnu">Twitter</a></li>
				<li><a href="https://plus.google.com/+jnujaipuruniversity">Google+</a></li>
				<li class="last"><a href="http://www.youtube.com/user/jnujaipur">Youtube</a></li>
			</ul>
			</div>
			<br class="clearfix" />
		</div>
	</div>
	
</body>
</html>
