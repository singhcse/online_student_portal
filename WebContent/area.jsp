<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
				<li class="last" id="title"><a href="post.jsp">Post Report</a></li>
				<li class="last" id="title"><a href="GetPostDetails1.jsp">View Status</a></li>
				<li class="last" id="title"><a href="area.jsp">Your Area</a></li>
				<li class="last" id="title"><a href="Gallery.jsp">Gallery</a></li>
				<li class="last" id="title"><a href="advice.jsp">Your Advice</a></li>
				<li class="last" id="title"><a href="topic.jsp">Discuss</a></li>
				<li class="last" id="title"><a href="logout.jsp">Logout</a></li>
				<li class="last" id="title"><a href=""></a></li>
				<li class="last" id="title"><font color="black"><%=s %></font></li>
			</ul>
		</div><br>
		<div id="sidebar14">
					<div class="box">
						<form action="area.jsp">
							<tr>
								<th colspan="10" scope="col">
									
								</th>
							</tr>
		
	<%!
		PreparedStatement pst=null;
		Connection con=null;
		ResultSet rs=null;
	%>
	<center>
	<form action="Search.jsp" method="post">
	<table>
		<tr>
		<td>Course:</td><td><select name="course" id="course" style="height:25px; width:330px">
		<option>Select</option>
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
		
		</select></td></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
		<td>Stream:</td><td><select name="stream" id="stream" style="height:25px; width:330px">
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
												
												
		</select></td></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr>
		<td>Year:</td><td><select name="year" id="year" style="height:25px; width:330px">
		<option>Select</option>
												<option>1st</option>
												<option>2nd</option>
												<option>3rd</option>
												<option>4th</option>
												<option>5th<ption>
												<option>others</option>
												
												
		</select></td></tr>
		</table>
		</center><br>
		<center><strong>View Area Details</strong></center><br>
		<center>
		<table border="1" width="300" cellpadding="1" cellspacing="1" align="center">
		<tr bgcolor="#1C7575">
		<td bgcolor="#1C7575"><font color="white"><b>Course</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Stream</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Year</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Idea</b> </font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Status</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Picture</b></font></td>
		<td bgcolor="#1C7575"><font color="white"><b>Your Post Id</b></font></td>
		</tr>
		
		
<%
	String course=request.getParameter("course");
	String stream=request.getParameter("stream");
	String year=request.getParameter("year");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jnu_management", "root", "singhcse");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from postidea where course='"+course+"' and stream='"+stream+"' and year='"+year+"'");
	while(rs.next())
	{
	%>			
			
				<tr>
				<td><input type="text"  name="fname" value="<%=rs.getString(1)%>" style="height:35px; width:80px"> </td>
				<td><input type="text"  name="dob" value="<%=rs.getString(2)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="cont" value="<%=rs.getString(3)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="email" value="<%=rs.getString(4)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="bgroup" value="<%=rs.getString(5)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="name" value="<%=rs.getString(6)%>" style="height:35px; width:80px"> </td>
				<td><input type="text" name="relation" value="<%=rs.getInt(7)%>" style="height:35px; width:80px"> </td>
				</tr>		
				
	<% }%>
	</table>
</center>
	<br>
	<center><td><input type="submit" value="Search" ></td></center>
				</div>
			</div>
</form>
<br class="clearfix" />
		<div id="page-bottom">
			<div id="page-bottom-content">
				<h3>Share your Idea</h3>
				<p>Now You can Share Your any Innovative idea.You can discuss any topics with group of students or faculty member of JNU.
					Simply just Register Yourself and Do login After that click on Post Idea Link as shown above.
					And After selecting Your course and stream YOu can post Your idea Simply.This will be visible
					to students of your stream and faculty members . In advice section you can also give advice by which we can improve our work.</p>
			</div>
			<div id="page-bottom-sidebar">
				<h3>Social Media</h3>
				<ul class="list">
				<li><a href="http://www.jnujaipur.ac.in/">main website</a></li>
				<li><a href="https://www.facebook.com/jaipurnationaluniv">Facebook</a></li>
				<li><a href="https://twitter.com/jaipurjnu">Twitter</a></li>
				<li><a href="https://plus.google.com/+jnujaipuruniversity">Google+</a></li>
				<li class="last"><a href="http://www.youtube.com/user/jnujaipur">Youtube</a></li>
			</ul>			</div>
			<br class="clearfix" />
		</div>
	
<%}
		else
		{
			response.sendRedirect("Home.jsp");
		}
%>
</body>
</html>