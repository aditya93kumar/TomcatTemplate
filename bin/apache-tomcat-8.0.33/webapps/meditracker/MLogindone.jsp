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
String s1=request.getParameter("email");
String s2=request.getParameter("pass");

Connection con=DBInfo.getConnection();
String query="select * from mlogin where emailid=? and password=?";
		 

	PreparedStatement ps=con.prepareStatement(query);
	
		   ps.setString(1,s1);
		   ps.setString(2,s2);
		   
		  
		  
		    ResultSet res=ps.executeQuery();
			if(res.next())
			{
			  String p=res.getString(1);
			   session.setAttribute("customername",p);
			   if(res.getString(3).equalsIgnoreCase("user"))
			   { 
			  response.sendRedirect("shop.jsp");
			 }
			 else
			 
			    if(res.getString(3).equalsIgnoreCase("dealer"))
			   {
			   response.sendRedirect("DealerPanel.jsp");
			   }
			   else
			 			   { 
			  response.sendRedirect("MAdminPanel.jsp");
			 }

			 
			  }
			  else
			   {
			    response.sendRedirect("User.jsp");
			   }
			

%>
</body>
</html>