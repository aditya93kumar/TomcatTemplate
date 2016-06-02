<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="p1.DBInfo"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Login|Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/design/css/style.css">
  <script src="assets/web/assets/jquery/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
</head>
<body>
 
<section class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--full-height mbr-section--bg-adapted" id="header1-1" style="background-image: url(assets/images/healthcare-telemedicine-banner1-1918x673-72.jpg);"> 
	 <%@ include file="Header.jsp" %>  

  
   

<center>

<div class="row">
<div class="col-lg-7">      <%@ include file="MLogin.jsp" %>
</div>
<div class="col-lg-3">      <%@ include file="MRegister.jsp" %>
</div>

    
</div></center>
</section>
</body>
</html