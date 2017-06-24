<html>
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#menu > ul').dropotron({
			mode : 'fade',
			globalOffsetY : 11,
			offsetY : -15
		});

	});
</script>
<style>
#username {
	background-color: #000000;
	color: #FFFFFF;
}

#password {
	background-color: #000000;
	color: #FFFFFF;
}

#register {
	color: red;
	text-decoration: blink;
}
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
		<%
		String s=(String)session.getAttribute("userid");
		if(s!=null)
		{
		%>
		<div id="menu">
			<ul>
				<li class="last" id="title"><a href="home1.jsp">About us</a></li>
				<li class="last" id="title"><a href="post.jsp">Post Idea</a></li>
				<li class="last" id="title"><a href="GetPostDetails1.jsp">View
						Status</a></li>
				<li class="last" id="title"><a href="area.jsp">Your Area</a></li>
				<li class="last" id="title"><a href="Gallery.jsp">Gallery</a></li>
				<li class="last" id="title"><a href="advice.jsp">Your
						Advice</a></li>
				<li class="last" id="title"><a href="topic.jsp">Discuss</a></li>
				<li class="last" id="title"><a href="logout.jsp">Logout</a></li>
				<li class="last" id="title"><a href="#"></a></li>
				<li class="last" id="title"><a href="#"></a></li>
				<li class="last" id="title"><font color="black"><%=s%></li>
			</ul>
		</div>
		<center>
			<div id="page">
				<div id="content2">
					<div class="box" style="margin: 5px;">
						<fieldset style="border: thin">
							<p style="margin-left: 5px;">
								<marquee id="ctl00_rightContainer_LblPanel2_panel2"
									scrollamount="1" scrolldelay="50" align="justify"
									direction="up" onmouseout="this.start()"
									onmouseover="this.stop()">
									Now You can Share Your any Innovative idea.You can discuss any topics with group of students or faculty member of JNU.
					Simply just Register Yourself and Do login After that click on Post Idea Link as shown above.
					And After selecting Your course and stream YOu can post Your idea Simply.This will be visible
					to students of your stream and faculty members . In advice section you can also give advice by which we can improve our work. 
			</p>
							</marquee>
						</fieldset>
					</div>
				</div>
				<div id="sidebar14">
					<div class="box">
						<form action="account.jsp" method="post">
							<tr>
								<th colspan="10" scope="col">
									<div class="box1">
										<marquee>
											<h2>
												<font color="#000000"><br>JNU connect.</font>
											</h2>
										</marquee>
									</div>
								</th>
							</tr>
							<table width="100%" border="0" align="right" cellpadding="10"
								style="border: #000000 solid 2px;"2" padding:20px;">
								<tr>
									<th colspan="4" bgcolor="#333333" scope="col"><font
										color="#FFFFFF">Post Idea</font></th>
								</tr>
								<tr>
									<td width="100%">&nbsp;</td>
									<td width="3%">&nbsp;</td>
									<td width="100%">&nbsp;</td>
								</tr>
								<tr>
									<td width="28%" rowspan="12"><div align="center">
											<img src="images/jnu.png" width="48" height="48" />
										</div></td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>Course:</td>
									<td><label> <select name="course" style="height:25px; width:330px">
												<option>select</option>
												
		<option>School of Computer & Systems Sciences</option>
		<option>School of Education</option>
		<option>School of Business & Management</option>
		<option>School of Life & Basic Sciences</option>
		<option>School of Languages, Literature & Society</option>
		<option>School of Hotel Management & Catering Technology</option>
		<option>School of Engineering & Technology</option>
		<option>School Of Fashion Design</option>
		<option>School of Media Studies</option>
		<option>Seedling School of Law & Governance</option>
												
										</select></label></td>
								</tr>
								<tr>
									<td>Stream:</td>
									<td><label> <select name="stream" style="height:25px; width:330px">
												<option>select</option>
												<option>B.Tech. (Mechanical Engineering)</option>
												<option>Diploma in Mechanical Engineering</option>
												<option>Ph.D.(Electronics & Communication Engineering)</option>
												<option>M.Tech. ME (Industrial and Production Engineering)</option>
												<option>M.Tech. E&C (Embedded System)</option>
												<option>M.Tech. E&C (Communication and Signal Processing)</option>
												<option>M.Tech. Civil Engineering(Infrastructure engineering and construction management)</option>
												<option>M.Tech. Civil Engineering(Water Resource)</option>
												<option>M.Tech. Civil Engineering(Water Resource)</option>
												<option>B.Tech. (Biotechnology)</option>
												<option>B.Tech. (Chemical Engineering)</option>
												<option>B.Tech. (Electrical Engineering)</option>
												<option>B.Tech. (Food Technology)</option>
												<option>B.Tech. (Civil Engineering)</option>
												<option>B.Tech. (Computer Science & Engineering)</option>
												<option>B.Tech. (Electronics & Communication Engineering)</option>
												<option>B.Tech. (Electronics and Computer Engineering)</option>												
										</select></label></td>
								</tr>
								<tr>
									<td>Year:</td>
									<td><label> <select name="year" style="height:25px; width:330px">
												<option>Select</option>
												<option>1st</option>
												<option>2nd</option>
												<option>3rd</option>
												<option>4th</option>
												<option>5th</option>
												<option>Others</option>
												
												
										</select></label></td>
								</tr>
								<tr>
									<td>Your Idea:</td>
									<td><label> <textarea name="idea" rows="10"
												cols="40" placeholder="!dea" /></textarea>
									</label></td>
								</tr>
								<tr>
									<td>Your Status:</td>
									<td><label> <input type="radio" name="radio"
											value="pending" />Pending <input type="radio" name="radio"
											value="executed"/>Executed
									</label></td>
								</tr>
								<td>Upload pic Please:</td>
								<td><label> <input type="file" name="file" />
								</label></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td colspan="0"><label>
											<div align="left">
												<input name="Submit" type="submit" value="Submit" />
											</div>
									</label></td>
								</tr>
							</table>
					</div>
				</div>
			</div>
		</center>

		</form>
		<br class="clearfix" />
		<div id="page-bottom">
			<div id="page-bottom-content">
				<h3>!de@s are worth Sharing</h3>
					<p>Now You can Share Your any Innovative idea.You can discuss any topics with group of students or faculty member of JNU.
					Simply just Register Yourself and Do login After that click on Post Idea Link as shown above.
					And After selecting Your course and stream YOu can post Your idea Simply.This will be visible
					to students of your stream and faculty members . In advice section you can also give advice by which we can improve our work. 
			</p>
			</div>
			<div id="page-bottom-sidebar">
				<h3>Social Media links</h3>
			<ul class="list">
				<li><a href="http://www.jnujaipur.ac.in/">main website</a></li>
				<li class="first"><a href="https://www.facebook.com/jaipurnationaluniv">Facebook</a></li>
				<li><a href="https://twitter.com/jaipurjnu">Twitter</a></li>
				<li><a href="https://plus.google.com/+jnujaipuruniversity">Google+</a></li>
				<li class="last"><a href="http://www.youtube.com">Youtube</a></li>
			</ul>			</div>
			<br class="clearfix" />
		</div>
	<%}
else{
	response.sendRedirect("Home.jsp");
}%>	
</body>
</html>