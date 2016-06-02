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

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
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

<div class="fluid-container">



<div class="page-header" style="margin-top:20px;">
<%@ include file="Header.jsp" %></div>

<div class="row">
<br/>
<div class="col-lg-4">
</div>

<div class="col-lg-4">
<%

 String s1=request.getParameter("sel1");
// String s2=request.getParameter("pname");
 //String s3=request.getParameter("des");
 int i1=Integer.parseInt(request.getParameter("pid"));
 
 Connection con=DBInfo.getConnection();
 
          //String query="insert into "+s1+" values(?,?,?,?,?,?) ";
		  String query="select * from "+s1+" where pid=?";
		  
		 

	PreparedStatement ps=con.prepareStatement(query);
	
		  ps.setInt(1,i1);
		 
			  
		   
		  
		  
		  ResultSet res= ps.executeQuery();
		  while(res.next())
		  {
		    String s=res.getString(2);
			System.out.print(s);
			 
		  }
			
			
			
%>
  

 
            
               
           
		</div>

<div class="col-lg-2">
</div>
</div>

</body>
</html>
<% 
%>