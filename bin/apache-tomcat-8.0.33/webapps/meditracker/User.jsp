<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="p1.DBInfo"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Login | Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="assets/images/imageedit-9-2954139493-123x121-94.png" type="image/x-icon">
	
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/design/css/style.css">
  <script src="assets/web/assets/jquery/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
</head>
<body>
 
<section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-7" style="background-image: url(assets/images/healthcare-telemedicine-banner1-1918x673-72.jpg);"> 
	
  <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <span class="mbr-brand__logo"><a href="index.jsp"><img src="assets/images/imageedit-9-2954139493-123x121-94-123x121-81.png" class="mbr-navbar__brand-img mbr-brand__img"></a></span>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="index.jsp">MEDITRACKER</a></span>
                    </span>
                </div>
                <div class="mbr-navbar__hamburger mbr-hamburger"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active">
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#slider-8">HOME</a></li>
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#features1-8" target="_blank">ABOUT</a></li> 
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#features1-14" target="_blank">SERVICES</a></li>
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#form1-15" target="_blank">CONTACT</a></li>
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="http://meditrackers.azurewebsites.net/ask.html" target="_blank">CONSULT</a></li></ul></div>
                        
						<div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active">
						
						
						<%
//System.out.print(""+session.getAttribute("customername"));
if(!(""+session.getAttribute("customername")).equals("null"))
	 {
	 
	

%>


				
						<li class="mbr-navbar__item"><nav class="main-nav"><a class="mbr-buttons__btn btn btn-danger cd-signin" href="DLogout.jsp">Logout</a></nav></li></ul></div>
        
<%
}
 
	 
	 else
	 {
	 %>
	 
	 				
						<li class="mbr-navbar__item"><nav class="main-nav"><a class="mbr-buttons__btn btn btn-danger cd-signin" href="User.jsp">Login</a></nav></li></ul></div>
        
	 <%
	 }
	 %>

						
						
						
		            </nav>
                </div>
            </div>
        </div>
   
</section>
<center>

<section class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--full-height mbr-section--bg-adapted" id="header1-1" style="background-image: url(assets/images/healthcare-telemedicine-banner1-1918x673-72.jpg);">
<div class="row">
<div class="col-lg-7"><br><br><br><br><br><br>      <%@ include file="MLogin.jsp" %>
</div>
<div class="col-lg-3"><br><br><br><br><br>      <%@ include file="MRegister.jsp" %>
</div>

    
</div></section></center>

</body>
</html