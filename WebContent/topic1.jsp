<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%
	Connection con=null;
	PreparedStatement ps=null;

		try {
			String s = request.getParameter("iname");
			String d = request.getParameter("email");
			String t = request.getParameter("discuss");
			String u = request.getParameter("date");
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Loaded");
			String url = "jdbc:mysql://localhost:3306/jnu_management";
			con = DriverManager.getConnection(url, "root", "singhcse");
			System.out.println("Connection Established");
			ps = con.prepareStatement("INSERT INTO ideas VALUES(?,?,?,?)");

		
		ps.setString(1, s);
		ps.setString(2, d);
		ps.setString(3, t);
		ps.setString(4, u);

		int i=ps.executeUpdate();
		
		if(i>0)
			out.println("dicussion started successfully");
		

		}
		catch(Exception e){
			System.out.println(e);
		}
		finally{
			con.close();
			
		}
	
	
	
	%>
	
	
</body>
</html>