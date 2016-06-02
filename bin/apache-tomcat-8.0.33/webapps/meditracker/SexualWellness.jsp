
<%@ page import="java.sql.*"%>
<%@ page import="p1.DBInfo"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	
	 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/design/css/style.css">
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
</head>
<body>
 
  <%@ include file="CHeader.jsp" %> 
		  

  
   

<div class="container-fluid">

  <div style="width:100%; height:100px; float:left;">
   <h1>Sexual Wellness</h1><hr/>
  </div>
    <%
String s1,s2;float s3,s5; int s4;
Connection con=DBInfo.getConnection();
String query="select * from sexualwellness";
		 

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
<div class="col-lg-3"><a href="SexualWellness1.jsp?id=<%= s4 %>" style="text-decoration:none;"><img src=<%=s2 %> style="width:80%; height:200px;" /><hr/><center><div style="height:40px;"><%= s1 %></div></center><br/><hr/><h4>RS.</h4><center><%= s3 %></center><hr/></a> </div>

    

    
  
			  <%
		   } 
		   
     %>
	
</div>



</body>
</html>