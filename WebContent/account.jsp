<%@ page import="java.sql.*"%>
<%
	try
	{
		String course = request.getParameter("course");
		String stream = request.getParameter("stream");
		String year = request.getParameter("year");
		String idea = request.getParameter("idea");
		String radio = request.getParameter("radio");
		String file = request.getParameter("file");
		int x=0;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jnu_management", "root", "singhcse");
	Statement st = con.createStatement();
	int i = st.executeUpdate("insert  into postidea values('"+course+ "','"+stream+"','"+year+"','"+idea+ "','"+radio+"','"+file+"','"+x+"')");
	
	if (i>0)
	{
		response.sendRedirect("post.jsp");
	} 
	else 
	{
		response.sendRedirect("post.jsp");
	}
	}
		
	catch(Exception e)
	{
	out.print(e);
	}
	
%>