<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
<head>
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
				<li class="last" id="title"><a href="post.jsp">Post Idea</a></li>
				<li class="last" id="title"><a href="GetPostDetails1.jsp">View
						Status</a></li>
				<li class="last" id="title"><a href="area.jsp">Your  stream</a></li>
				<li class="last" id="title"><a href="Gallery.jsp">Gallery</a></li>
				<li class="last" id="title"><a href="advice.jsp">Your
						Advice</a></li>
				<li class="last" id="title"><a href="topic.jsp">Discuss</a></li>
				<li class="last" id="title"><a href="logout.jsp">Logout</a></li>
				<li class="last" id="title"><a href=""></a></li>
				<li class="last" id="title"><font color="black"><%=s %></font></li>
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
						<form action="Search.jsp">
							<tr>
								<th colspan="10" scope="col">
									<div class="box1">
										<marquee>
											<h2>
												<font color="#000000"><br>Innovative JNU.</font>
											</h2>
										</marquee>
									</div>
								</th>
							</tr>
							<br>
							<table width="100%" border="0" align="center" cellpadding="2"
								cellspacing="2" style="border: #000000 solid 2px; padding: 5px;">
								<tr>
									<td>Select Your Post Idea ID:-</td>
									<td><select name="roll" id="roll" style="height:25px; width:330px">
									<% 
									 try
										{
										Class.forName("com.mysql.jdbc.Driver");
										System.out.println("Driver Loaded");
										String url="jdbc:mysql://localhost:3306/jnu_management";
										Connection con=DriverManager.getConnection(url,"root","singhcse");
										System.out.println("Connection Established");
										Statement st=con.createStatement();
										ResultSet rs=st.executeQuery("select post_id from postidea");
										while(rs.next())
										{%>
        									<option><%= rs.getInt(1)%></option>
        								<% } 

										} 
										catch(Exception e)
										{
											out.println(e);
										}
										%>
								</td>
								</tr>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td colspan="0"><label>
											<div align="left">
												<input type="submit" value="search" />
											</div>
									</label></td>
								</tr>
							</table>
					</div>
					</form>
				</div>
		</center>
		</form>
		<br class="clearfix" />
		<div id="page-bottom">
			<div id="page-bottom-content">
				<h3>Connect Globe</h3>
				<p>Now You can Share Your Social Problem such as some kind of
					Harassment,Bribe matters. Simply just Register Yourself and Do
					login After that click on Post Report Link as shown above. And
					After selecting Your subject and location YOu can post Your matter
					Simply.This will be visible to every visitors and our Supporters
					will try to proceed it further.</p>
			</div>
			<div id="page-bottom-sidebar">
				<h3>Social Media</h3>
				<ul class="list">
				<li><a href="http://www.jnujaipur.ac.in/">main website</a></li>
				<li class="first"><a href="https://www.facebook.com/jaipurnationaluniv">Facebook</a></li>
				<li><a href="https://twitter.com/jaipurjnu">Twitter</a></li>
				<li><a href="https://plus.google.com/+jnujaipuruniversity">Google+</a></li>
				<li class="last"><a href="https://www.youtube.com/user/jnujaipur">Youtube</a></li>
			</ul>
			</div>
			<br class="clearfix" />
		</div>
	</div>
	
<%}
		else
		{
			response.sendRedirect("Home.jsp");
		}
%>
</body>
</html>