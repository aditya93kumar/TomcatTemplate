<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="p1.DBInfo"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>MyCart</title>
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
 <%@ include file="CHeader.jsp" %>
   <%
int p,q;
int r=0;
String a=" ";
String b=" ";
String t=" ";
String id1=" ";
 
 
 Connection con=DBInfo.getConnection();


String query1="select * from cart where cemail=?";

  
	
	
	PreparedStatement ps1=con.prepareStatement(query1);
	ps1.setString(1,""+session.getAttribute("customername"));
	
	 ResultSet res=ps1.executeQuery();
		 
		 while(res.next())          
		 {
		  p=res.getInt(2);
		  q=res.getInt(3);
		  id1=res.getString(1);
		  
		   String cat2=""+session.getAttribute("itematt");
		   
		     String query2="select * from "+cat2+" where pid=?"; 
			 PreparedStatement ps2=con.prepareStatement(query2);
			 ps2.setInt(1,p);
             ResultSet res1=ps2.executeQuery();
			   while(res1.next()){
			  a=res1.getString(2);
			  b=res1.getString(4);
			  r=res1.getInt(5);
			  t=res1.getString(3);
			   
			    session.setAttribute("A1",p);
							    session.setAttribute("A2",q);
											    session.setAttribute("A3",q*r);
												session.setAttribute("A4",id1);
			  
			   
			   
			     
            			  
								 
			  }			  
			  %>
			  
			  
		 <br/>		  
					  
<center>  
		   
		   <div style="width:100%; height:200px; border:groove">
<div style="width:20%; height:200px; float:left"><center><img src="<%=t%>" style="width:100px; height:100px; " /></center></div>
<div style="width:40%; height:200px; float:left">
<div style="width:100%; height:60px;"><h3 align="left"><font color="#6633CC"><b><%= a %></b></font></h3>
</div>
<div style="width:100%; height:140px; float:left"><h5 align="left"><font color="#666666"><%=b%></font></h5>
</div>



</div>

<div style="width:40%; height:200px;float:left">

<div style="width:100%; height:40px;">Quantity: &nbsp;<%=q%>
</div>
<div style="width:100%; height:40px;">Total Price:&nbsp;<%=r*q%>
</div>
<div style="width:50%; height:120px; float:left"><center><form action="Order.jsp?id=<%= id1 %>" method="post"><input type="submit" name="submit" id="submit" value="Order Now!!" class="btn btn-info pull-right"></form></center>
</div>
<div style="width:50%; height:120px; float:left"><center><form action="RemovefromCart.jsp?id=<%= id1 %>" method="post"><input type="submit" name="submit" id="submit" value="Remove!!" class="btn btn-info pull-right"></form></center>
</div>
</div>
</div>
</center>
			  <%		    
		 }
		 
%>  
</div>
</body>
</html