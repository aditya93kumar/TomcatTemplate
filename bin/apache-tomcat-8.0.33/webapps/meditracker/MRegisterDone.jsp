<%@ page import="java.sql.*"%>
<%@ page import="p1.DBInfo"%>
<html>
<head>
<meta charset="utf-8" />
    <link rel="shortcut icon" href="assets/images/imageedit-9-2954139493-123x121-94.png" type="image/x-icon">
	<title>MEDITRACKER | Online Medical Store</title>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design/css/style.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
<jsp:useBean id="obj" class="p1.RegistrationBean"/>
</head>
<body >
<%
String s1=request.getParameter("fname");
String s2=request.getParameter("lanme");
String s3=request.getParameter("email");
String s4=request.getParameter("pass1");
String s5=request.getParameter("pass2");
String s6=request.getParameter("contact");

 if(s4.equals(s5))
 { 

Connection con=DBInfo.getConnection();
String query="insert into mregister values(?,?,?,?,?)";
String query1="insert into mlogin values(?,?,?)";
		 

	PreparedStatement ps=con.prepareStatement(query);
		PreparedStatement ps1=con.prepareStatement(query1);
	 ps1.setString(1,s3);
			 ps1.setString(2,s4);
			 			 ps1.setString(3,"user");
			
			ps1.executeUpdate();
		   ps.setString(1,s1);
		   ps.setString(2,s2);
		    ps.setString(3,s3);
			 ps.setString(4,s4);
			  ps.setString(5,s6);
			  
			  ps.executeUpdate();
			  %>
			  <center><font color="#666666" face="Georgia, Times, serif"><b><h2>Registration Done!!</h2></b></font>
			  <div class="container"><a href="http://javates.azurewebsites.net/meditracker/User.jsp" class="btn btn-info" role="button">Login Now</a></div></center>
		   <%
	}
	else
	{ 
		  
		  
			  response.sendRedirect("User.jsp");
			   
			  
			   }
			%>
</body>
</html>
