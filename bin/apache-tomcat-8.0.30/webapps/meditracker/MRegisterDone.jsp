<%@ page import="java.sql.*"%>
<%@ page import="p1.DBInfo"%>
<html>
<head>
<meta charset="utf-8" />
    <title>Registration form Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	 <link href="bootstrap.css" rel="stylesheet">
    
    <link href="bootstrap-responsive.css" rel="stylesheet">

   
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
<link rel="stylesheet" type="text/css" href="file:///C|/Users/intel/Music/Documents/Unnamed Site 1/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="file:///C|/Users/intel/Music/Documents/Unnamed Site 1/bootstrap.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="file:///C|/Users/intel/Music/Documents/Unnamed Site 1/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="file:///C|/Users/intel/Music/Documents/Unnamed Site 1/bootstrap.css">
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
			  <center><font color="#666666" face="Georgia, Times, serif"><b><h2>Registration Done!!</h2></b></font></center>
		   <%
	}
	else
	{ 
		  
		  
			  response.sendRedirect("User.jsp");
			   
			  
			   }
			%>
</body>
</html>