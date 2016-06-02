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
<div class="row" style="height:100px;">
</div>
<div class=" row" style="background-color:#FF0000; height:50px;">

<div class="col-lg-1">
   <h2><font color="#FFFFFF">MEDITRACKER</font></h2>
</div>


<div class="col-lg-9">
   
</div>
<div class="col-lg-2">


<div class="dropdown">
MY CART
<span class="caret"></span>
</button>

</div>
</div>		
</div>
  
   <%

 String id1=request.getParameter("id");
 
 Connection con=DBInfo.getConnection();

String q1="delete from cart where cid=?";

PreparedStatement ps1=con.prepareStatement(q1);

ps1.setString(1,id1);

ps1.executeUpdate();

response.sendRedirect("MyCart.jsp");
    

%>  
</div>
</body>
</html