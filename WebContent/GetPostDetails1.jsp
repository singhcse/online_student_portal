<%@taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>



<%@ page language="java" import="java.sql.*" import="java.io.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>JSP List PostReport Records</title>
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
<style type="text/css">
<!--
.style2 {
	color: #FFFFFF;
	font-weight: bold;
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
				<li class="last" id="title"><a href=""></li>
				<li class="last" id="title"><font color="black"><%=s %></font></li>
			</ul>
		</div>
		<div id="page">
			<div id="content">
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
			<div id="sidebar17">
				<div class="box">
					<div align="left">
						<table width="620" border="1" bordercolor="" align="left"
							cellpadding="1" cellspacing="1">
							<tr>
								
								<td bgcolor="33CCCC"><div align="center" class="style2">Course</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">Stream</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">Year</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">Your
										Idea</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">Your
										Status</div></td>
								<td bgcolor="33CCCC"><div align="center" class="style2">Picture</div></td>
							</tr>


								<% 
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jnu_management","root","singhcse");
							Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);  
							ResultSet rs=stmt.executeQuery("select * from postidea");  
							
							while (rs.next()){
							
								out.println("<tr>");
									out.println("<td><center>");
									out.print(rs.getString(1));
									out.println("</center></td>");
									
									
								
									out.println("<td><center>");
									out.print(rs.getString(2));
									out.println("</center></td>");
									
				
									out.println("<td><center>");
									out.print(rs.getString(3));
									out.println("</center></td>");
									
									
									out.println("<td><center>");
									out.print(rs.getString(4));
									out.println("</center></td>");
									
									
								
									out.println("<td><center>");
									out.print(rs.getString(5));
									out.println("</center></td>");
									
									
								    out.println("<td><center>");
								    out.print(rs.getString(6));
								    out.println("</center></td>");
									
							
							
							
							}
							}catch(Exception e){out.println(e);}
							
							%>
									
							
						</table>
					</div>
				</div>
			</div>
		</div>
		<br class="clearfix" />
		<div id="page-bottom">
			<div id="page-bottom-content">
				<p>Now You can Share Your any Innovative idea.You can discuss any topics with group of students or faculty member of JNU.
					Simply just Register Yourself and Do login After that click on Post Idea Link as shown above.
					And After selecting Your course and stream YOu can post Your idea Simply.This will be visible
					to students of your stream and faculty members . In advice section you can also give advice by which we can improve our work. 
			</p>
				
			</div>
			<div id="page-bottom-sidebar">
				<h3>Social Media</h3>
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
<%}
		else
		{
			response.sendRedirect("Home.jsp");
		}
%>
</body>
</html>
