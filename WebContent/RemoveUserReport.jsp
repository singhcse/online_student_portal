<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>

<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/jnu_management" user="root"
	password="singhcse" var="myds" scope="request" />

<sql:update dataSource="${requestScope.myds}"
	sql="delete from members where first_name=?" var="count">
	<sql:param value="${param.first_name}" />
</sql:update>

<c:if test="${count eq 1}">
	<b>User Removed</b>
</c:if>
<c:if test="${count ne 1}">
	<b>Problem in removing User</b>
</c:if>
<br />
<a href="UserIdea.jsp">View Idea</a>
