<%@page import="com.innovatejnu.Admin"%>
<jsp:useBean id="obj" class="com.innovatejnu.AdminBean" />
<jsp:setProperty property="*" name="obj" />
<%
	boolean status = Admin.validate(obj);
	if (status) {
%>
<jsp:include page="report.jsp"></jsp:include>
<%
	session.setAttribute("session", "TRUE");
	} else {
%>
<jsp:include page="admin.jsp"></jsp:include>
<%
	}
%>