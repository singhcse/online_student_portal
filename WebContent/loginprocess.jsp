<%@page import="com.innovatejnu.LoginDao"%>
<jsp:useBean id="obj" class="com.innovatejnu.LoginBean" />
<jsp:setProperty property="*" name="obj" />
<%
	boolean status = LoginDao.validate(obj);
	if (status) {
%>
<jsp:include page="menu.jsp"></jsp:include>
<%
	session.setAttribute("session", "TRUE");
	} else {
%>
<jsp:include page="Home.jsp"></jsp:include>
<%
	}
%>