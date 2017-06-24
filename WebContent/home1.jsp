<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>Innovative JNU</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="jquery.slidertron-1.1.js"></script>
</head>
<body>


<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Innovative JNU</a></h1>
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
			<li class="last" id="title"><a href="GetPostDetails1.jsp">View Status</a></li>
			<li class="last" id="title"><a href="area.jsp">Your Course</a></li>
			<li class="last" id="title"><a href="Gallery.jsp">Gallery</a></li>
			<li class="last" id="title"><a href="advice.jsp">Your Advice</a></li>
			<li class="last" id="title"><a href="topic.jsp">Discuss</a></li>
			
			<li class="last" id="title"><a href="logout.jsp">Logout</a></li>
			<li class="last" id="title"><font color="black">welcome  <%=s%></font></li>
	</ul>
	<br class="clearfix"/>
	</div>
		<div id="page">
		<div id="content1">
		        <div class="box" style="margin:10px;">
				<h2>Share your Innovative ideas and get benefited</h2 >
				<fieldset style="border:thin">
				<p style="margin-left:5px;"><marquee id="ctl00_rightContainer_LblPanel2_panel2" scrollamount="1" scrolldelay="50" align="justify" direction="up" onmouseout="this.start()" onmouseover="this.stop()">
					
					<strong>Now You can Share Your any Innovative idea.You can discuss any topics with group of students or faculty member of JNU.
					Simply just Register Yourself and Do login After that click on Post Idea Link as shown above.
					And After selecting Your course and stream YOu can post Your idea Simply.This will be visible
					to students of your stream and faculty members . In advice section you can also give advice by which we can improve our work. </strong>
				</p>
				</marquee>
				</fieldset>
		</div>
		</div>
		
			<br class="clearfix" />
	</div>
			<div id="page-bottom">
		<div id="page-bottom-content">
			<h3>connect JNU</h3>
			<p>
					Now You can Share Your Innovative ideas such as some kind of new stuff you have done.
					Simply just Register Yourself and Do login After that click on Post Idea or Information Link as shown above.
					And After selecting Your subject and location YOu can post Your matter Simply.This will be visible
					to every registered students and our Faculty member will try to proceed it further.
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
			</ul>
		</div>
		<br class="clearfix" />
	</div>
</div>

<%}
else{
	response.sendRedirect("Home.jsp");
}%>	
</body>
</html>