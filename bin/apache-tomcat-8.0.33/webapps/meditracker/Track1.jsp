<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="p1.DBInfo"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Track</title>
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

   <%@ include file="Header.jsp" %>
   <%
 int i=Integer.parseInt(request.getParameter("id"));
 
 Connection con=DBInfo.getConnection();


String query1="select * from order1 where oid=?";

	
	
	PreparedStatement ps1=con.prepareStatement(query1);
     	ps1.setInt(1,i);
	 ResultSet res=ps1.executeQuery();
		 
		 if(res.next())          
		 {
		 %>
		 
		 <font color="#666666" face="Georgia, Times, serif"><b><h2><center>Not Deliverd Yet!!</center></h2></b></font>
		 <%
		 }
		 else
		 { 
		 
		  %>
		 
		 <font color="#666666" face="Georgia, Times, serif"><b><h2><center>Item Delivered!!</center></h2></b></font>
		 <%
		 }
		 %>
</div>
</body>
</html