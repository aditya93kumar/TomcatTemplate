<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="p1.DBInfo"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Login</title>
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
</head>
<body>
 
 
		  

  
   

<div class="container-fluid">
	



 
   <%
     String s1=request.getParameter("Name");
	      String s2=request.getParameter("Phone");
		  String s3=request.getParameter("Email");
		  
		 String s=""+session.getAttribute("Dname");
		  session.removeAttribute("Dname");


 
 Connection con=DBInfo.getConnection();

String query2="insert into request values(?,?,?,?)";
 PreparedStatement ps2=con.prepareStatement(query2);
 ps2.setString(1,s);
 ps2.setString(2,s1);
 ps2.setString(3,s2);
  ps2.setString(4,s3);
  
   session.setAttribute("patientemail",s3);
 
 ps2.executeUpdate();
 response.sendRedirect("doctorfinder1.jsp");
 
 %>
</div>
</body>
</html