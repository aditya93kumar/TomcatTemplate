<%@ page import="java.sql.*"%>
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

<h5><font color="#FFFFFF">MY CART</font></h5>
</div>
</div>
  <div style="width:100%; height:100px; float:left;">
   <h1>Hair Care</h1><hr/>
  </div>
    <%
String s1,s2;float s3,s5; int s4;
Connection con=DBInfo.getConnection();
String query="select * from haircare";
		 

	PreparedStatement ps=con.prepareStatement(query);
	
	
	    
		     ResultSet res=ps.executeQuery();
		
		   while(res.next())
		   { 
		   
		       s1=res.getString(2);
			   s2=res.getString(3);
			    s3=res.getFloat(5);
				s4=res.getInt(1);
				System.out.print(s4);
			   
		   
		    %>
			  
   
   
   
  
			  <%
		   } 
		   
     %>
	
</div>



</body>
</html>