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
  <link rel="shortcut icon" href="assets/images/imageedit-9-2954139493-123x121-94.png" type="image/x-icon">
	<title>MEDITRACKER | Doctor Finder and Book Appointment</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design/css/style.css">
  <script src="assets/web/assets/jquery/bootstrap.min.js"></script>
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
  
 
  
  
  
  
 </head>
<body>

<section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-7">
    <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <span class="mbr-brand__logo"><a href="index.jsp"><img class="mbr-navbar__brand-img mbr-brand__img" src="assets/images/imageedit-9-2954139493-123x121-94.png" alt="Medi" title="MEDITRACKER | Online Medical Store"></a></span>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="index.jsp">MEDITRACKER</a></span>
                    </span>
                </div>
                <div class="mbr-navbar__hamburger mbr-hamburger text-white"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column">
						<ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active">
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#slider-8">HOME</a></li>
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#features1-8" target="_blank">ABOUT</a></li> 
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#features1-14" target="_blank">SERVICES</a></li>
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#form1-15" target="_blank">CONTACT</a></li>
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="http://meditrackers.azurewebsites.net/ask.html" target="_blank">CONSULT</a></li></ul></div>
                        
						<div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active">
						<%
//System.out.print(""+session.getAttribute("customername"));
if(!(""+session.getAttribute("D1")).equals("null"))
	 {
	 
	

%>


				
						<li class="mbr-navbar__item"><nav class="main-nav"><a class="mbr-buttons__btn btn btn-danger cd-signin" href="DLogout.jsp">Logout</a></nav></li></ul></div>
        
<%
}
 
	 
	 else
	 {
	 %>



	 				
						<li class="mbr-navbar__item"><nav class="main-nav"><a class="mbr-buttons__btn btn btn-danger cd-signin" href="doctorfinder5.jsp">Login | For Doctors</a></nav></li></ul></div>
        
	 <%
	 }
	 %>
	 
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--full-height mbr-section--bg-adapted" id="header1-1" style="background-image: url(assets/images/healthcare-telemedicine-banner1-1918x673-72.jpg);">
    <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-box__magnet--center-left mbr-after-navbar">
        <div class="mbr-overlay" style="opacity: 0.3; background-color: rgb(34, 34, 34);"></div>
        <div class="mbr-box__container mbr-section__container container">
            <div class="mbr-box mbr-box--stretched"><div class="mbr-box__magnet mbr-box__magnet--center-left">
                <div class="row"><div class=" col-sm-6 col-sm-offset-6">
                    <div class="mbr-hero animated fadeInUp">
                        <h1 class="mbr-hero__text">Find and Book Appointment with Doctors</h1>
                        <p class="mbr-hero__subtext">We have made it easier to find the right doctor for you and your family.<br></p>
                    </div>
                    <div class="mbr-buttons btn-inverse mbr-buttons--left"><a class="mbr-buttons__btn btn btn-lg btn-danger animated fadeInUp delay" href="#content5-3">FIND AND BOOK NOW</a> </div>
                </div></div>
            </div></div>
        </div>
        <div class="mbr-arrow mbr-arrow--floating text-center">
            <div class="mbr-section__container container">
                <a class="mbr-arrow__link" href="#content5-3"><i class="glyphicon glyphicon-menu-down"></i></a>
            </div>
        </div>
    </div>
</section>



<section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="content5-3" style="background-color: rgb(128, 128, 128)";>
 


 <center>
<div class="container">

<%
  String a="Ophthalmologist";
  String b="Dermatologist";
  String c="Homeopath";
  String d="Ayurveda";
  String e="Cardiologist";
  String f="Gastroenterologist";
  String g="Phychiatrist";
  String h="ENT";
  String i="Gynecologist";
  String j="Neurologist";
  String k="Urologist";
  String l="Dentist";
  
  %>


<div class="panel-group">
<div class="panel panel-info">
      <div class="panel-heading"><h3><b>Find Doctor with specialization and Book Appointment here</b></h3> </div>
      <div class="panel-body">


  <h1>Find and Book</h1>
  <br>
  <form class="form-inline" role="form"  action="doctorfinder2.jsp" method="post">
  
  <div class="form-group">
  <button type="button" class="btn btn-default btn-lg">
          <span class="glyphicon glyphicon-map-marker"></span> Jaipur
        </button></div>
  <div class="form-group">
      
      <select class="form-control input-lg" style="width:200px"" id="sel2"  name="list1">
	  <option class="dropdown-header">Select Location</option>
	  
        <option>Jhotwara</option><li class="divider"></li>
        <option>M.I.Road</option><li class="divider"></li>
        <option>Malviya nagar</option><li class="divider"></li>
		<option>Mansarovar</option><li class="divider"></li>
        <option>Ashok nagar</option><li class="divider"></li>
        <option>Bapu nagar</option><li class="divider"></li>
		<option>Lal kothi</option><li class="divider"></li>
        <option>sitapura</option><li class="divider"></li>
        <option>C-scheme</option><li class="divider"></li>
		<option>Vaishali Nagar</option><li class="divider"></li>
		<option>Jawahar Nagar</option>
        
      </select>
    </div>
  <div class="form-group">
      
      <select class="form-control input-lg" style="width:350px"" id="sel2" name="list2">
	  <option class="dropdown-header">Select specialization</option>
        <option>Dentist</option><li class="divider"></li>
        <option>Ophthalmologist</option><li class="divider"></li>
        <option>Dermatologist</option><li class="divider"></li>
		<option>Homeopath</option><li class="divider"></li>
        <option>Ayurveda</option><li class="divider"></li>
        <option>Cardiologist</option><li class="divider"></li>
		<option>Gastroenterologist</option><li class="divider"></li>
        <option>Psychiatrist</option><li class="divider"></li>
        <option>ENT</option><li class="divider"></li>
		<option>Gynecologist</option><li class="divider"></li>
        <option>Neurologist</option><li class="divider"></li>
        <option>Urologist</option>
      </select>
    </div>
  <div class="form-group ">
    <button type="submit" name="Submit" value="Submit" class="btn btn-info btn-lg">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
  </div>
  </form>
  
  
  <table width="70%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="6">&nbsp;<center><img src="images1/Capture19.PNG" /><hr  width="34%"></center></td>
    </tr><br><hr>
	
  <tr>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= a %> "><img src="images1/Capture6.PNG" /></a></center></td>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= b %> "><img src="images1/Capture7.PNG" /></a></center></td>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= c %> "><img src="images1/Capture8.PNG" /></a></center></td>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= d %> "><img src="images1/Capture9.PNG" /></a></center></td>
	<td>&nbsp;<center><a href="DSearch.jsp?id=<%= e %> "><img src="images1/Capture10.PNG" /></a></center></td>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= f %> "><img src="images1/Capture11.PNG" /></a></center></td>
  </tr>
  
  
  <tr>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= g %> "><img src="images1/Capture13.PNG" /></a></center></td>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= h %> "><img src="images1/Capture14.PNG" /></a></center></td>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= i %> "><img src="images1/Capture15.PNG" /></a></center></td>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= j %> "><img src="images1/Capture16.PNG" /></a></center></td>
	<td>&nbsp;<center><a href="DSearch.jsp?id=<%= k %> "><img src="images1/Capture18.PNG" /></a></center></td>
    <td>&nbsp;<center><a href="DSearch.jsp?id=<%= l %> "><img src="images1/Capture12.PNG" /></a></center></td>
  </tr>
</table>
  
  </div>
  </div>
  </div>
  
  </div>

</center>
 
 
 

     


</section>
	 

	 
   





<section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="contacts2-16" style="background-color: rgb(60, 60, 60);">
    
    <div class="mbr-section__container container">
        <div class="mbr-contacts mbr-contacts--wysiwyg row">
            <div class="col-sm-6">
                <figure class="mbr-figure mbr-figure--wysiwyg mbr-figure--full-width mbr-figure--no-bg">
                    <div class="mbr-figure__map mbr-figure__map--short mbr-google-map">
                        <p class="mbr-google-map__marker" data-coordinates="26.7815273,75.82118739999999">JECRC FOUNDATION</p>
                    </div>
                </figure>
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                        <p class="mbr-contacts__text"><strong>ADDRESS</strong><br>JECRC Campus,<br>
Sitapura, Jaipur.<br> 302022<br><br>

                    </div>
                    <div class="col-sm-6"><p class="mbr-contacts__text"><strong>CONTACTS</strong><br>
Email: support@meditracker.com<br>
Phone: +91 8107747252<br>
Fax: +1 (0) 000 0000 002</p></div>
                </div>
				
				<div class="row">
				<div class="col-sm-5 col-sm-offset-1">
				
				<p class="mbr-contacts__text"><strong>FOLLOW US</strong></P>
				 <!--div class="mbr-social-icons mbr-social-icons--style-1 col-sm-8" -->
				 
			<a class="mbr-social-icons__icon socicon-bg-twitter" title="Twitter" target="_blank" href=" "><i class="socicon socicon-twitter"></i></a> 
			<a class="mbr-social-icons__icon socicon-bg-facebook" title="Facebook" target="_blank" href=" "><i class="socicon socicon-facebook"></i></a> 
			<a class="mbr-social-icons__icon socicon-bg-googleplus" title="Google+" target="_blank" href=" "><i class="socicon socicon-googleplus"></i></a> 
		    <a class="mbr-social-icons__icon socicon-bg-linkedin" title="LinkedIn" target="_blank" href=" "><i class="socicon socicon-linkedin"></i></a> 
			
				</div>
			
				</div>
				
            </div>
        </div>
    </div>
</section>

<footer class="mbr-section mbr-section--relative mbr-section--fixed-size" id="footer1-17" style="background-color: rgb(68, 68, 68);">
    
    <div class="mbr-section__container container">
        <div class="mbr-footer mbr-footer--wysiwyg row">
            <div class="col-sm-12">
                <p class="mbr-footer__copyright">Copyright (c) 2016 MEDITRACKER. <a class="mbr-footer__link text-gray" href=" ">Terms of Use</a>  | <a class="mbr-footer__link text-gray" href="">Privacy Policy</a></p>
            </div>
        </div>
    </div>
</footer>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
   <script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5"></script>
   <script src="assets/facebook-plugin/facebook-script.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <!--[if lte IE 9]>
    <script src="assets/jquery-placeholder/jquery.placeholder.min.js"></script>
  <![endif]-->
  <script src="assets/design/js/script.js"></script>
  <script src="assets/formoid/formoid.min.js"></script>
  
  
 </body>
</html>