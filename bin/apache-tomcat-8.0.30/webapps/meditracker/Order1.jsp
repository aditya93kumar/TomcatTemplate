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
 
 
		   <%@ include file="CHeader.jsp" %>

  
   

<div class="container-fluid">
<div class="row" style="height:100px;">
</div>
<div class=" row" style="background-color:#FF0000; height:50px;">

<div class="col-lg-1">
   <h2><font color="#FFFFFF">MEDITRACKER</font></h2>
</div>

</div>  
   <%
   
    String s1=(String)request.getParameter("fname");
	String s2=(String)request.getParameter("lname");
	String s3=(String)request.getParameter("add1");
	String s4=(String)request.getParameter("add2");
	String s5=(String)request.getParameter("contact");
	String s6=(String)request.getParameter("email");
	int a=0;

	int x=0;
	

 
 Connection con=DBInfo.getConnection();





String query1="insert into order1 values(?,?,?,?,?,?,?,?,?,?)";
	
	try{
	PreparedStatement ps1=con.prepareStatement(query1);
	x=(int)(Math.random()*100000000);
	ps1.setInt(1,x);
	ps1.setString(2,s1);
	ps1.setString(3,s2);
	ps1.setString(4,s3);
	ps1.setString(5,s4);
	ps1.setString(6,s5);
	ps1.setString(7,s6);
    ps1.setInt(8,Integer.parseInt(""+session.getAttribute("A1")));
	ps1.setInt(9,Integer.parseInt(""+session.getAttribute("A2")));
	ps1.setInt(10,Integer.parseInt(""+session.getAttribute("A3")));
	ps1.executeUpdate();
	 
	  String query3="select * from haircare";
      PreparedStatement ps3=con.prepareStatement(query3);	
	  ResultSet res=ps3.executeQuery();
	  while(res.next())
	   {
	    
		 a=res.getInt(7);
	    }
	
	String query2="update haircare set quantity=? where pid=?";
	PreparedStatement ps2=con.prepareStatement(query2);
	ps2.setInt(1,a-Integer.parseInt(""+session.getAttribute("A2")));
	ps2.setInt(2,Integer.parseInt(""+session.getAttribute("A1")));
	ps2.executeUpdate();
	
	String q1="delete from cart where cid=?";

PreparedStatement ps4=con.prepareStatement(q1);

ps4.setString(1,""+session.getAttribute("A4"));

ps4.executeUpdate();
	
	
	
	}catch(Exception e)
	{
	 e.printStackTrace();}
	 
	 session.removeAttribute("A1");
	 session.removeAttribute("A2");
	 session.removeAttribute("A3");
	 session.removeAttribute("A4");
		 
%>
 
  <font style="color:#666666; face=Georgia, Times, serif;"><b><h2><center>Thanks!! Your Order has been Received</center></h2><br/></b><h4><center>Now you can Track order using <a href="Track1.jsp?id=<%= x %>">Order id-<%= x %></a></center></font> 

  
</div>
</body>
</html