<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="p1.DBInfo"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/imageedit-9-2954139493-123x121-94-123x121-81.png" type="image/x-icon">
  <meta name="description" content="">
  <title>MEDITRACKER | Online Medical Store</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/design/css/style.css">
  <script src="assets/web/assets/jquery/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="css1/cubeportfolio.css">
<script type="text/javascript">
function validate()
{ 
  if( document.myForm.Name.value == "" )
         {
            alert( "Please provide your name!" );
            document.myForm.Name.focus() ;
            return false;
         }
		 
	if( document.myForm.Email.value == "" )
         {
            alert( "Please provide your email id!" );
            document.myForm.Name.focus() ;
            return false;
         }
	 if( document.myForm.Phone.value == "" )
         {
            alert( "Please provide your phone Number!" );
            document.myForm.Name.focus() ;
            return false;
         }
		else
		{
			alert("Thank You For filling form !! we will confirm appointment within 10 min.");
			
		}
		return (true);
}
  
</script>



 </head>
<body>
<section class="mbr-navbar mbr-navbar--freeze mbr-navbar mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-7" style="background-image: url(assets/images/healthcare-telemedicine-banner1-1918x673-72.jpg);">
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


				
						<li class="mbr-navbar__item"><nav class="main-nav"><a class="mbr-buttons__btn btn btn-danger cd-signin" href="MLogout.jsp">Logout/<a  class="mbr-buttons__btn btn btn-danger cd-signin href="MyCart.jsp">My Cart</a></a></nav></li></ul></div>
        
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

  
  <script src="assets/web/assets/jquery/jquery.min.js"></script>
 <script src="https://maps.googleapis.com/maps/api/js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
 
  <script src="assets/design/js/script.js"></script>
 
 <script type="text/javascript" src="scripts/jquery.cubeportfolio.js"></script>

<script type="text/javascript" src="scripts/cube-portfolio-0.js"></script>
</body>
</html>