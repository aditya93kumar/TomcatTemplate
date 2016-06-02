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
 
 
		  

  
    <%@ include file="CHeader.jsp" %>

<div class="container-fluid">
<center>
  <form role="form" action="Track1.jsp" method="post">
			   <br/>
			   <br/>			   <br/>
			   
              <input type="text" class="form-control" style="width:400px;" name="id" id="InputName1" placeholder="Order Id" required><br/>
			  <input type="submit" name="submit" id="submit" value="Track Me!!" class="btn btn-info">
			  </form>
			  </center>
			  
			  
</div>
</body>
</html