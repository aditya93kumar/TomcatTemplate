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
  <title>MEDITRACKER | Doctor Finder and Book Appointment</title>
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




<section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="content5-3" style="background-color: rgb(128, 128, 128);">
    
    
<div id="portfolio-nospace" class="clearfix bodyColorGray ">
<div class="col-md-12 text-center animated bounceInDown "style="color:#fff" data-wow-duration=".115s">
    <hr size="2"  width="94%"><h1>Search Result</h3><br>

</div>
</div>



<div class="container">
<div class="panel-group">
<div class="panel panel-info">
      <div class="panel-heading"><b>Doctors in Jaipur </b> </div>
      <div class="panel-body">

<%
   String s1=request.getParameter("list1");
      String s2=request.getParameter("list2");
	  //
	  
	  
	  Connection con=DBInfo.getConnection();
String query="select * from dinfo where location=? and specification=?";

PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,s1);
	ps.setString(2,s2);
	
	    
		     ResultSet res=ps.executeQuery();
			   while(res.next())
                { 
			     String p1=res.getString(1);
				 String p2=res.getString(2);
				 String p3=res.getString(3);
				 String p4=res.getString(4);
				 String p5=res.getString(5);
				 int i1=res.getInt(6);
				 int i2=res.getInt(7);
				 String p6=res.getString(8);
				 String p7=res.getString(9);
				 String p8=res.getString(10);
				 String p9=res.getString(11);
				  
				  
				 
		
				  
				  %>
 <br>
			  
					  
<center>


	<%
 session.setAttribute("Dname",p1);
 %>

	  
<div style="width:60%; height:250px; border:groove" class="animated fadeInUp">
 <div style="width:25%; height:40px; float:left"class="animated fadeInDown"><center><br><img src="<%=p2 %>"/></center></div>
 <div style="width:50%; height:40px;float:left"class="animated fadeInLeft">
 <div style="width:90%; height:40px; float:left"><h3 align="left"><font color="#81BEF7"><b>Dr. <%=p1 %></b></font></h3></div>
 <div style="width:100%; height:40px; float:left"><h5 align="left"><font color="#666666"><b><i class="fa fa-user-md" style="font-size:24px"></i>&nbsp;&nbsp;<%=p3 %>,<%=p4 %></b></font></h5></div>
 <div style="width:100%; height:35px; float:left"><h5 align="left"><font color="#666666"><b><i class="fa fa-briefcase" style="font-size:20px"></i>&nbsp;<%=i2 %> years experience</b></font></h5></div>
 <div style="width:100%; height:40px;  float:left"><h5 align="left"><font color="#666666"><b><i class="fa fa-stethoscope" style="font-size:24px"></i>&nbsp;&nbsp;<%=p5 %></b></font></h5></div>
 <div style="width:100%; height:10px;  float:left"><h5 align="left"><font color="#666666"><b><i class="fa fa-hospital-o" style="font-size:22px"></i>&nbsp;&nbsp;<%=p6 %></b></font></h5></div>
 </div>
 <div style="width:20%; height:200px;  float:left"class="animated fadeInRight">          
 <div style="width:50%; height:53px;  float:left"></div>
 <div style="width:100%; height:40px;  float:left"><font color="#666666"><span class="glyphicon glyphicon-map-marker"style="font-size:16px"></span><b>&nbsp;<%=p7 %></b></font></h5></div>
 <div style="width:100%; height:40px;  float:left"><font color="#666666"><b><i class="fa fa-rupee"  style="font-size:16px"></i>&nbsp; INR <%=i1 %></b></font></h5></div>
 <div style="width:100%; height:40px;  float:left"><font color="#666666"><b> <i class="fa fa-calendar" style="font-size:16px"></i>&nbsp;&nbsp;MON-SAT</b></font></h5></div>
 <div style="width:100%; height:25px;  float:left"><font color="#666666"><b><span class="glyphicon glyphicon-time" style="font-size:16px"></span>&nbsp;&nbsp;<%=p8 %>-<%=p9 %></b></font></h5></div>
 <div style="width:150%; height:40px; float:right;">
 <center><form action="doctorfinder3.jsp" method="post"><input type="submit" name="submit" id="submit" value="Book Appointment" class="btn btn-info pull-left"></form></center>
</div>

 </div>
 
 
</div>
</center>





  
			
	  
	  

	  <%
				 }
	  %>
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
			<a class="mbr-social-icons__icon socicon-bg-twitter" title="Twitter" target="_blank" href=" "><i class="socicon socicon-twitter"></i></a> 
			<a class="mbr-social-icons__icon socicon-bg-facebook" title="Facebook" target="_blank" href=" "><i class="socicon socicon-facebook"></i></a> 
			<a class="mbr-social-icons__icon socicon-bg-googleplus" title="Google+" target="_blank" href=" "><i class="socicon socicon-googleplus"></i></a> 
		    <a class="mbr-social-icons__icon socicon-bg-linkedin" title="LinkedIn" target="_blank" href=" "><i class="socicon socicon-linkedin"></i></a> 		</div>
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
 <script src="https://maps.googleapis.com/maps/api/js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
 
  <script src="assets/design/js/script.js"></script>
 
 <script type="text/javascript" src="scripts/jquery.cubeportfolio.js"></script>

<script type="text/javascript" src="scripts/cube-portfolio-0.js"></script>
</body>
</html>