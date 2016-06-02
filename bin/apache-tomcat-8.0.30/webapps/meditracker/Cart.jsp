<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="p1.DBInfo"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Cart</title>
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
int x=0;
String a=" ";
String b=" ";
 
     int q=Integer.parseInt(request.getParameter("quantity"));
	  String c=request.getParameter("cat1");
	  System.out.print("cat"+c);
 Connection con=DBInfo.getConnection();

int i=Integer.parseInt(""+session.getAttribute("productid"));

  
  
  

   
  String query1="select * from "+c;


  


  
	
	
	PreparedStatement ps1=con.prepareStatement(query1);
	ResultSet res=ps1.executeQuery();
	while(res.next())
	{
	  x=res.getInt(7);
	}

if(q < x)
{ 
String query2="insert into cart values(?,?,?,?,?)";

	PreparedStatement ps2=con.prepareStatement(query2);
	ps2.setString(1,"id"+(int)(Math.random()*10000000));
	ps2.setInt(2,i);
	ps2.setInt(3,q);
	ps2.setString(4,c);
		ps2.setString(5,""+session.getAttribute("customername"));
	
	ps2.executeUpdate();
	
		 response.sendRedirect("MyCart.jsp");
		 }
		 else
		  {
		   %>
		     
			 <div >
			 
			   <center><B><h2>Sorry!! Item Not Available</h2></B></center>
			 </div>
		   <% 
		    
		  }
%>  
</div>
</body>
</html