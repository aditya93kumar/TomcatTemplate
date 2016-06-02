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

   <%
 int i=Integer.parseInt(request.getParameter("id"));
 
 Connection con=DBInfo.getConnection();


String query1="select * from order1 where oid=?";

	
	
	PreparedStatement ps1=con.prepareStatement(query1);
     	ps1.setInt(1,i);
	 ResultSet res=ps1.executeQuery();
		 
		 while(res.next())          
		 {
		  		    String s1=res.getString(2);
				    String s2=res.getString(3);
			        String s3=res.getString(4);
					String s4=res.getString(5);
				    String s5=res.getString(6);
				    String s6=res.getString(7);	
			  		String s7=res.getString(8);
					String s8=res.getString(9);
					String s9=res.getString(10);
																											 
			  			  
			  %>
			  
			  
		 <br/>		  
					  
<center>  
		   
		   <div style="width:100%; height:200px; border:groove">
<div style="width:20%; height:200px; float:left"><center><img src="" style="width:100px; height:100px; " /></center></div>
<div style="width:40%; height:200px; float:left">
<div style="width:100%; height:60px;"><h3 align="left"><font color="#6633CC"><b><%= s1+" "+s2 %></b></font></h3>
</div>
<div style="width:100%; height:140px; float:left"><h5 align="left"><font color="#666666"><%=s3+" "+s4%></font></h5>
</div>



</div>

<div style="width:40%; height:200px;float:left">

<div style="width:100%; height:40px;">Quantity: &nbsp;<%=s8%>
</div>
<div style="width:100%; height:40px;">Total Price:&nbsp;<%=s9%>
</div>
<div style="width:50%; height:120px; float:left"></div>
<div style="width:50%; height:120px; float:left"></div>
</div>
</div>
</center>
			  <%		    
		 }
		 
%>  
</div>
</body>
</html