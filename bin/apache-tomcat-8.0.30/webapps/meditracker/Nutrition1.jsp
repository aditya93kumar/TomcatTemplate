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
   <h1>Nutrition</h1><hr/>
  </div>
   <%
if((""+session.getAttribute("customername")).equals("null"))
	 {
	  response.sendRedirect("User.jsp");  
	 }
String p="",q="",r="",t="";
 int s=Integer.parseInt(request.getParameter("id"));
 String cat1="nutrition";
 session.setAttribute("itematt",cat1);
 session.setAttribute("productid",s);
 
Connection con=DBInfo.getConnection();
String query="select * from nutrition where pid=?";
		 

	PreparedStatement ps=con.prepareStatement(query);
	ps.setInt(1,s);
	
	    
		     ResultSet res=ps.executeQuery();
			   while(res.next())
                { 
			     p=res.getString(2);
				  t=res.getString(3);
				 q=res.getString(4);
				 r=res.getString(6);
				 }
		 
			  %>

   <div class="row" style="width:100%; height:500px; ">
   <div class="col-lg-5" style="width:35%; height:100%; float:left">
  <img src=<%=t%>  style="width:90%; height:90%;" />
   </div>
   <div class="col-lg-7" style="width:55%; height:100%; float:left">
   <div class="row" style="width:100%; height:10%; background-color:#FFFFFF; float:left;"><h2><%=p%></h2></div><br/><br/>
   <div class="row" style="width:100%; height:10%; background-color:#FFFFFF; float:left;">Delivey Time: <%=r%></div>
   <div class="row" style="width:100%; height:10%; background-color:#FFFFFF; float:left;"><form action="Cart.jsp?cat1=<%=cat1 %> " method="post"><input type="text"  name="quantity" placeholder="quantity"/><input type="submit" value="Add to cart"/></form></div>
   <div class="row" style="width:100%; height:10%; background-color:#FFFFFF; float:left;"></div>
   <div class="row" style="width:100%; height:20%; background-color:#FFFFFF; float:left;"><p>
<%=q%></p></div>
   </div>
   
   

    
  </div>
	
</div>



</body>
</html>