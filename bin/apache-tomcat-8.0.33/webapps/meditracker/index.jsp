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
	<title>MEDITRACKER | Online Medical Store</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design/css/style.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
  
  <link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
  	<link rel="stylesheet" href="css/style.css"> <!-- Gem style -->
	
  
 </head>
<body>

<section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-7">
    <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <span class="mbr-brand__logo"><a href="index.jsp#slider-8"><img class="mbr-navbar__brand-img mbr-brand__img" src="assets/images/imageedit-9-2954139493-123x121-94.png" alt="Medi" title="MEDITRACKER | Online Medical Store"></a></span>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="index.jsp#slider-8">MEDITRACKER</a></span>
                    </span>
                </div>
                <div class="mbr-navbar__hamburger mbr-hamburger text-white"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column">
						<ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active">
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#slider-8">HOME</a></li>
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#features1-8">ABOUT</a></li> 
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#features1-14" target="_blank">SERVICES</a></li>
						<li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.jsp#form1-15">CONTACT</a></li></ul></div>
                        
						<div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active">
						<li class="mbr-navbar__item"><nav class="main-nav"><a class="mbr-buttons__btn btn btn-danger cd-signin" href="User.jsp">SIGN IN</a></nav></li></ul></div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-slider mbr-section mbr-section--no-padding carousel slide" data-ride="carousel" data-wrap="true" data-interval="5000" id="slider-8" style="background-color: rgb(255, 255, 255);">
    <div class="mbr-section__container">
        <div>
            <ol class="carousel-indicators">
                <li data-app-prevent-settings="" data-target="#slider-8" data-slide-to="0" class="active"></li>
				<li data-app-prevent-settings="" data-target="#slider-8" data-slide-to="1"></li>
				<li data-app-prevent-settings="" data-target="#slider-8" class="" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height active" style="background-image: url(assets/images/pharmacy-banner-508911-970x274-39.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-after-navbar">
                        <div class=" container">
                            
                            <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero animated fadeInUp">
                                    <h1 class="mbr-hero__text">Buy Medicines Online</h1>
                                    <p class="mbr-hero__subtext"> MEDITRACKER is an online marketplace, where you buy different types of medicine like health care, skin care, baby care etc. to purchase them online. The aim of this application is to develop 24/7 facility for users.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="shop.jsp">SHOP NOW</a> </div>
                            </div></div>
                        </div>
                    </div>
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(assets/images/healthcare-telemedicine-banner1-1918x673-72.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-after-navbar">
                        <div class=" container">
                            
                            <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero animated fadeInUp">
                                    <h1 class="mbr-hero__text">Find and Book Appointment with Doctors</h1>
                                    <p class="mbr-hero__subtext">We have made it easier to find the right doctor for you and your family.</p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="doctorfinder1.jsp">BOOK APPOINTMENT</a> </div>
                            </div></div>
                        </div>
                    </div>
                </div><div class="mbr-box mbr-section mbr-section--relative mbr-section--fixed-size mbr-section--bg-adapted item dark center mbr-section--full-height" style="background-image: url(assets/images/doc-2065962b-3465659b111-620x388-5.jpg);">
                    <div class="mbr-box__magnet mbr-box__magnet--sm-padding mbr-after-navbar">
                        <div class=" container">
                            
                            <div class="row"><div class="col-sm-8 col-sm-offset-2">
                                <div class="mbr-hero animated fadeInUp">
                                    <h1 class="mbr-hero__text">May I help you?</h1>
                                    <p class="mbr-hero__subtext">We are proud to offer highly-qualified internal and family medicine physicians in your community. Our physicians are committed to solve your health related query. </p>
                                </div>
                                <div class="mbr-buttons btn-inverse mbr-buttons--center"><a class="mbr-buttons__btn btn btn-lg btn-danger" href="http://meditrackers.azurewebsites.net/ask.html">ASK HEALTH-CARE QUESTION</a> </div>
                            </div></div>
                        </div>
                    </div>
                </div>
            </div>
            
            <a data-app-prevent-settings="" class="left carousel-control" role="button" data-slide="prev" href="#slider-8">
                <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a data-app-prevent-settings="" class="right carousel-control" role="button" data-slide="next" href="#slider-8">
                <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>

<section class="mbr-section mbr-section--relative mbr-section--fixed-size mbr-parallax-background" id="features1-8" style="background-image: url(assets/images/blue-curves-on-texture-22986-1920x1200-1920x1200-12.jpg);">
    <br><br>
        <div class="mbr-header mbr-header--center mbr-header--wysiwyg row animated fadeInUp">
            
                <h3 class="mbr-header__text">ABOUT ME</h3>
                
            
        </div><br><br><br>
    
    <div class="mbr-section__container container">
        <div class="mbr-section__row row">
            <div class="mbr-section__col col-xs-12 col-sm-4">
                <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle">
                    <figure class="mbr-figure"><img style="border-radius:50%;height:350px"class="mbr-figure__img" src="assets/images/img-20160120-101552-620x931-34-300x300-56.jpg"></figure>
                </div>
               
                    <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                        <h1 class="mbr-header__text">ADITYA KUMAR</h1>
                    </div><br>
                
                
                    <div class="mbr-article mbr-article--wysiwyg">
                        <p>Web-Developer</p>
                    </div>
					<div class="mbr-article mbr-article--wysiwyg">
                        <p>Computer Science B.Tech</p>
                    </div>
					<div class="mbr-article mbr-article--wysiwyg">
                        <p>JECRC,JAIPUR.</p>
                    </div>
					<div class="mbr-article mbr-article--wysiwyg">
                        <p>+91-8107747252</p>
                    </div><hr>
             <br><br><br><br>
                
            </div>
            <div >
               <br><br><br><br><br><br><br><br><br>
			   
					
                
                    <div class="mbr-header mbr-header--reduce mbr-header mbr-header--wysiwyg">
                        <h1 class="mbr-header__text">"Continuous improvement is better, than Delayed Perfection"</h1>
                    </div><br>
               
               <br><br><br><br><br><br><br><br><br><br><br><br><br>
                    <div class="mbr-article mbr-article--wysiwyg">
                        <p>LET'S KEEP IN TOUCH</p>
                    </div><br>
               
                <div class="mbr-section__container mbr-section__container--last">
                    <div class="mbr-buttons mbr-buttons--center">
					<a href="https://web.facebook.com/aditya93kumar" style="border-radius:50%"class="mbr-social-icons__icon socicon-bg-facebook" target="_blank"><i class="socicon socicon-facebook"></i> </a> 
					<a href="https://in.linkedin.com/in/aditya93kumar" style="border-radius:50%"class="mbr-social-icons__icon socicon-bg-linkedin" target="_blank"> <i class="socicon socicon-linkedin"></i></a>  
					<a href="#" style="border-radius:50%;"class="mbr-social-icons__icon socicon-bg-googleplus" target="_blank"> <i class="socicon socicon-googleplus"></i></a>  
					
					</div>
                </div>
            </div>
            
            
            
            
            
            
        </div>
    </div>
</section>

<section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="features1-14" style="background-color: rgb(255, 255, 255);">
    <br>
        <div class="mbr-header mbr-header--center mbr-header--wysiwyg row">
            
                <h3 class="mbr-header__text">OUR SERVICES</h3>
                
            
        </div><br><br>
    
    <div class="mbr-section__container container">
        <div class="mbr-section__row row">
            <div class="mbr-section__col col-xs-12 col-sm-4">
                <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle zoomin">
                    <figure class="mbr-figure"><img class="mbr-figure__img" src="assets/images/doctor-white-coat.svg"></figure>
                </div>
                <div class="mbr-section__container mbr-section__container--middle">
                    <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                        <h3 class="mbr-header__text">Find and Book Appointment with Doctors</h3>
                    </div>
                </div>
                <div class="mbr-section__container mbr-section__container--middle">
                    <div class="mbr-article mbr-article--wysiwyg">
                        <p>We have made it easier to find the right doctor for you and your family.<br><br></p>
                    </div>
                </div>
                <div class="mbr-section__container mbr-section__container--last">
                    <div class="mbr-buttons mbr-buttons--center"><a href="doctorfinder1.jsp" class="mbr-buttons__btn btn btn-wrap btn-xs-lg btn-default">LEARN MORE</a></div>
                </div>
            </div>
            <div class="mbr-section__col col-xs-12 col-sm-4">
                <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle zoomin">
                    <figure class="mbr-figure"><img class="mbr-figure__img" src="assets/images/imageedit-3-4714378371.gif"></figure>
                </div>
                <div class="mbr-section__container mbr-section__container--middle">
                    <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                        <h3 class="mbr-header__text">Buy Medicines Online</h3>
                    </div>
                </div>
                <div class="mbr-section__container mbr-section__container--middle">
                    <div class="mbr-article mbr-article--wysiwyg">
                        <p>MEDITRACKER is an online marketplace, where you buy different types of medicine like health care, skin care, baby care etc. to purchase them online.</p>
                    </div>
                </div>
                <div class="mbr-section__container mbr-section__container--last">
                    <div class="mbr-buttons mbr-buttons--center"><a href="shop.jsp" class="mbr-buttons__btn btn btn-wrap btn-xs-lg btn-default">LEARN MORE</a></div>
                </div>
            </div>
            
            <div class="mbr-section__col col-xs-12 col-sm-4">
                <div class="mbr-section__container mbr-section__container--center mbr-section__container--middle zoomin">
                    <figure class="mbr-figure"><img class="mbr-figure__img" src="assets/images/imageedit-16-9695750992.gif"></figure>
                </div>
                <div class="mbr-section__container mbr-section__container--middle">
                    <div class="mbr-header mbr-header--reduce mbr-header--center mbr-header--wysiwyg">
                        <h3 class="mbr-header__text">May I help you?</h3>
                    </div>
                </div>
                <div class="mbr-section__container mbr-section__container--middle">
                    <div class="mbr-article mbr-article--wysiwyg">
                        <p>We are proud to offer highly-qualified internal and family medicine physicians in your community. Our physicians are committed to solve your health related query.</p>
                    </div>
                </div>
                <div class="mbr-section__container mbr-section__container--last">
                    <div class="mbr-buttons mbr-buttons--center"><a href="http://meditrackers.azurewebsites.net/ask.html" class="mbr-buttons__btn btn btn-wrap btn-xs-lg btn-default">LEARN MORE</a></div>
                </div>
            </div>
            
            
            
            
            
        </div>
    </div>
</section>

<section class="mbr-section mbr-section--relative mbr-section--fixed-size mbr-parallax-background" id="form1-15" style="background-image: url(assets/images/7iixr-640x479-31.png);">
    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);"></div>
    <div class="mbr-section__container mbr-section__container--std-padding container">
        <div class="row">
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2" data-form-type="formoid">
                        <div class="mbr-header mbr-header--center mbr-header--std-padding">
                            <h2 class="mbr-header__text">CONTACT US</h2>
                        </div>
                        <div data-form-alert="true">
                            <div class="hide" data-form-alert-success="true">Thanks for filling out form!</div>
                        </div>
                        <form action=" " method="post" data-form-title="CONTACT US">
                            <input type="hidden" value="JSAmGOEcvKUzTLptRMAA4Vu38b886tpyXOzZ0dl4EFdTu7XDjwUoeHo4SXzJa3milc3ysXXjv6TXLOWpmIpO7UyWTdJWwoCwzapR1uzTNigd7MNP0XsC7tx5gMMdCVJ3" data-form-email="true">
                            <div class="form-group">
                                <input type="text" class="form-control" name="name" required="" placeholder="Name*" data-form-field="Name">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" required="" placeholder="Email*" data-form-field="Email">
                            </div>
                            <div class="form-group">
                                <input type="tel" class="form-control" name="phone" placeholder="Phone" data-form-field="Phone">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" rows="7" placeholder="Message" data-form-field="Message"></textarea>
                            </div>
                            <div class="mbr-buttons mbr-buttons--right"><button type="submit" class="mbr-buttons__btn btn btn-lg btn-danger">CONTACT US</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <!--[if lte IE 9]>
    <script src="assets/jquery-placeholder/jquery.placeholder.min.js"></script>
  <![endif]-->
  <script src="assets/design/js/script.js"></script>
  <script src="assets/formoid/formoid.min.js"></script>
  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/main.js"></script> <!-- Gem jQuery -->
  
 </body>
</html>