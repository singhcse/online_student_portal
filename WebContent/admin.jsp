<html">
<head>
<meta name="description"content=""/>
<meta name="keywords" content=""/>
<title>Innovative JNU</title>
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
	<div id="menu">
		
		<br class="clearfix" />
	</div>
	<div id="page">
		<div id="content">
		        <div class="box" style="margin:10px;">
				
				<fieldset style="border:thin">
				<p style="margin-left:5px;"><marquee id="ctl00_rightContainer_LblPanel2_panel2" scrollamount="1" scrolldelay="50" align="justify" direction="up" onmouseout="this.start()" onmouseover="this.stop()">
					
					Now You can Share Your any Innovative idea.You can discuss any topics with group of students or faculty member of JNU.
					Simply just Register Yourself and Do login After that click on Post Idea Link as shown above.
					And After selecting Your course and stream YOu can post Your idea Simply.This will be visible
					to students of your stream and faculty members . In advice section you can also give advice by which we can improve our work. 
			</p>
				</marquee>
				</fieldset>
		</div>
		</div>
		<div id="sidebar1">
			<div class="box">
				<th width="50%" scope="col">
				
				<form method="post" action="adminlogin.jsp" name="myform">
				<table width="60%" border="0" cellpadding="5" cellspacing="5" style="border:#000000 solid 1px"; padding:10px; alignment-adjust:central; style="font-weight:normal";background-color:#FFFFFF">
				<tr>
				<th colspan="3" bgcolor="#000000" scope="col"><font color="#FFFFFF">Admin Login</font></th>
				</tr>
				<tr>
				<td width="28%" rowspan="3"><div align="center"><img src="images/icon_module.png" width="48" height="48" /></div></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				</tr>
				<tr>
				<td width="24%"><b>Username:</b></td>
				<td width="45%"><label>
				<input name="username" type="text" id="username" style="height:25px; width:230px" placeholder="Enter User Name"/>
				</label></td>
				</tr>
				<tr>
				<td><b>Password:</b></td>
				<td><label>
				<input name="userpass" type="password" id="password" class="border" style="height:25px; width:230px" Placeholder="Enter User Password"/>
				</label></td>
				</tr>
				<tr>
				<td>&nbsp;</td>
				<td colspan="2"><label>
				<div align="center">
				<input name="Submit" type="submit" value="Submit" />
				</div>
				</label></td>
				</tr>
				</table>
			</div>
		</div>   
			<br class="clearfix" />
	</div>
			<div id="page-bottom">
		<div id="page-bottom-content">
			<h3>Innovative JNU</h3>
			<p>
				Now You can Share Your Academics related Problem such as some query related to any faculty</strong>.
					Simply just Register Yourself and Do login After that click on Post Report Link as shown above.
					And After selecting Your subject and location YOu can post Your matter Simply.This will be visible
					to every visitors and our Supporters will try to proceed it further.
			</p>
		</div>
		<div id="page-bottom-sidebar">
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