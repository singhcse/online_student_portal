<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description"content=""/>
<meta name="keywords" content=""/>
<title>JNUIANS</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="style.css"/>
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
		
	});
</script>
<style>
#register
{
	color:red;
	text-decoration: blink;
}
var isLoggedIn = "<%= (String)session.getAttribute("isLoggedIn")%>";
  if(isLoggedIn === "true")
     window.location.href="menu.jsp";
  }
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Innovative JNU</a></h1>
		</div>
	</div>
	<div id="menu2">
		<ul>
			
			<li class="last" id="title"><a href="GetPostDetails.jsp">Idea's List</a></li>
			<li class="last" id="title"><a href="UserIdea.jsp">Student's Details</a></li>
			<li class="last" id="title"><a href="adminlogout.jsp">LogOut</a></li>
			
			
			
		</ul>
		<h4> Administration</h4>
		<br class="clearfix" />
	</div>
	<div id="page">
		<div id="content">
		        
		</div>
		
			<br class="clearfix" />
	</div>
			<div id="page-bottom">
		<div id="page-bottom-content">
			<h3>Share your innovative ideas</h3>
			<p>
			
					Now You can Share Your Academics related Problem such as some query related to any faculty</strong>.
					Simply just Register Yourself and Do login After that click on Post Report Link as shown above.
					And After selecting Your subject and location YOu can post Your matter Simply.This will be visible
					to every visitors and our Supporters will try to proceed it further.
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
</body>
</html>