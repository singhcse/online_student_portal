<%@ page import="java.sql.*"%>
<%
	String user = request.getParameter("uname");
	String pwd = request.getParameter("pass");
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String barcode=request.getParameter("ubarcode");
	String email = request.getParameter("email");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jnu_management", "root", "singhcse");
	Statement st = con.createStatement();
	//ResultSet rs;
	int i = st.executeUpdate("insert into members(first_name, last_name,barcode, email, uname, pass, regdate) values ('"+ fname+ "','"+ lname+ "','"+ barcode+ "','"+ email+ "','"+ user + "','" + pwd + "', CURDATE())");
	if (i > 0) {
		//session.setAttribute("userid", user);
		out.print("Registration Successfull");
		response.sendRedirect("Home.jsp");
		//out.print("Registration Successfull!"+"<a href='Home.jsp'>Go to Login</a>");
	} else {
		response.sendRedirect("index.jsp");
	}
%>