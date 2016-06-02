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
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="css1/cubeportfolio.css">
<style>
.hover-visit-page-item {
    display: inline-block;
    margin: 20px auto 0;
    width: 130px;
    padding: 5px 10px;
    font-size: 18px;
    color: #E74C3C;
    text-align: center;
    border: 2px solid #fff;
    cursor: pointer;
    background-color: transparent;
}

.hover-visit-page-item:hover {
    display: inline-block;
    margin: 20px auto 0;
    width: 130px;
    padding: 1px 3px;
    font-size: 16px;
    color: #fff;
    text-align: center;
    border: 1px solid #E74C3C;
    cursor: pointer;
    background-color: #E74C3C;
}
</style>
 </head>
<body>
<section class="mbr-navbar mbr-navbar--freeze mbr-navbar mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-7" style="background-image: url(assets/images/pharmacy-banner-508911-970x274-39-970x274-92.jpg);">
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
                        <div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active"><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="#top">HOME</a></li><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="#bottom">ABOUT</a></li></ul></div>
                        <div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active"><li class="mbr-navbar__item"><a class="mbr-buttons__btn btn btn-default" href="index.html">SIGN OUT</a></li></ul></div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="content5-3" style="background-color: rgb(128, 128, 128);">
    
    

<div class="col-md-12 text-center animated bounceInDown "style="color:#fff" data-wow-duration=".115s">
    <hr size="2"  width="94%"><h1>Our Products</h3><br>

</div>


 

<div id="filters-container" class="cbp-l-filters-alignCenter">
<div class="hover-visit-page">   
   <div data-filter="*" class="cbp-filter-item-active cbp-filter-item hover-visit-page-item">All</div>
    <div data-filter=".web1" class="cbp-filter-item hover-visit-page-item">Baby-Care</div>
    <div data-filter=".web2" class="cbp-filter-item hover-visit-page-item">Health-Need</div>
	<div data-filter=".web3" class="cbp-filter-item hover-visit-page-item">Home-Need</div>
    <div data-filter=".web4" class="cbp-filter-item hover-visit-page-item">Hair-Care</div>
	<div data-filter=".web5" class="cbp-filter-item hover-visit-page-item">Nutrition</div>
    <div data-filter=".web6" class="cbp-filter-item hover-visit-page-item">Personal-Care</div>
	<div data-filter=".web7" class="cbp-filter-item hover-visit-page-item">Pharmacy</div>
    <div data-filter=".web8" class="cbp-filter-item hover-visit-page-item">Sexual-Wellness</div>
	<div data-filter=".web9" class="cbp-filter-item hover-visit-page-item">Skin-Care</div>
</div>
</div>


<!--baby care products   -->
<div id="grid-container" class="cbp-l-grid-gallery">

<ul>

<%
String s1,s2;float s3,s5; int s4;
Connection con1=DBInfo.getConnection();
String query1="select * from babycare";
		 

	PreparedStatement ps1=con1.prepareStatement(query1);
	
	
	    
		     ResultSet res1=ps1.executeQuery();
		
		   while(res1.next())
		   { 
		   
		       s1=res1.getString(2);
			   s2=res1.getString(3);
			    s3=res1.getFloat(5);
				s4=res1.getInt(1);
				
				
			   
		   
		    %>


<li class="cbp-item web1">





    <a class="cbp-caption ">
        <div class="cbp-caption-defaultWrap">
            <img src="<%=s2 %>"width="100%"/>
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= s1 %></div>
                    <p class="cbp-l-caption-desc">INR <%= s3 %></p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open('BabyCare1.jsp?id=<%= s4 %>','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>




<%

		   }

%>

</li></ul></div>

<div id="grid-container1" class="cbp-l-grid-gallery">


<!--health needs products   -->


<ul>
<%
String hn1,hn2;float hn3,hn5; int hn4;
Connection con2=DBInfo.getConnection();
String query2="select * from healthneeds";
		 

	PreparedStatement ps2=con2.prepareStatement(query2);
	
	
	    
		     ResultSet res2=ps2.executeQuery();
		
		   while(res2.next())
		   { 
		   
		       hn1=res2.getString(2);
			   hn2=res2.getString(3);
			    hn3=res2.getFloat(5);
				hn4=res2.getInt(1);
				
				
			   
		   
		    %>


<li class="cbp-item web2">





    <a class="cbp-caption ">
        <div class="cbp-caption-defaultWrap">
            <img src="<%=hn2 %>"width="100%"/>
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= hn1 %></div>
                    <p class="cbp-l-caption-desc">INR <%= hn3 %></p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open('HealthNeeds1.jsp','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>




<%

		   }

%>

</li></ul></div>



<div id="grid-container2" class="cbp-l-grid-gallery">
<!--Home Needs products   -->

<ul>

 <%
String ho1,ho2;float ho3,ho5; int ho4;
Connection con3=DBInfo.getConnection();
String query3="select * from homeneeds";
		 

	PreparedStatement ps3=con3.prepareStatement(query3);
	
	
	    
		     ResultSet res3=ps3.executeQuery();
		
		   while(res3.next())
		   { 
		   
		       ho1=res3.getString(2);
			   ho2=res3.getString(3);
			    ho3=res3.getFloat(5);
				ho4=res3.getInt(1);
			
				
			   
		   
		    %>


<li class="cbp-item web3">





    <a class="cbp-caption ">
        <div class="cbp-caption-defaultWrap">
            <img src="<%=ho2 %>"width="100%"/>
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= ho1 %></div>
                    <p class="cbp-l-caption-desc">INR <%= ho3 %></p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open('HomeNeeds1.jsp?id=<%= ho4 %>','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>




<%

		   }

%>

</li></ul>

</div>



<div id="grid-container4" class="cbp-l-grid-gallery">
<!--hair care products   -->

<ul>

 <%
String hc1,hc2;float hc3,hc5; int hc4;
Connection con4=DBInfo.getConnection();
String query4="select * from haircare";
		 

	PreparedStatement ps4=con4.prepareStatement(query4);
	
	
	    
		     ResultSet res4=ps4.executeQuery();
		
		   while(res4.next())
		   { 
		   
		       hc1=res4.getString(2);
			   hc2=res4.getString(3);
			    hc3=res4.getFloat(5);
				hc4=res4.getInt(1);
				
			   
		   
		    %>

<li class="cbp-item web4">





    <a class="cbp-caption ">
        <div class="cbp-caption-defaultWrap">
            <img src="<%=hc2 %>"width="100%"/>
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= hc1 %></div>
                    <p class="cbp-l-caption-desc">INR <%= hc3 %></p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open('HairCare1.jsp?id=<%= hc4 %>','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>




<%

		   }

%>

</li></ul>

</div>



<div id="grid-container5" class="cbp-l-grid-gallery">
<!--Nutrition products   -->

<ul>

<%
String n1,n2;float n3,n5; int n4;
Connection con5=DBInfo.getConnection();
String query5="select * from nutrition";
		 

	PreparedStatement ps5=con5.prepareStatement(query5);
	
	
	    
		     ResultSet res5=ps5.executeQuery();
		
		   while(res5.next())
		   { 
		   
		       n1=res5.getString(2);
			   n2=res5.getString(3);
			    n3=res5.getFloat(5);
				n4=res5.getInt(1);
			
			   
		   
		    %>


<li class="cbp-item web5">





    <a class="cbp-caption ">
        <div class="cbp-caption-defaultWrap">
            <img src="<%=n2 %>"width="100%"/>
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= n1 %></div>
                    <p class="cbp-l-caption-desc">INR <%= n3 %></p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open('Nutrition1.jsp?id=<%= n4 %>','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>




<%

		   }

%>

</li></ul>
</div>


<div id="grid-container6" class="cbp-l-grid-gallery">

<!--Persoanl  products   -->

<ul>
 <%
String p1,p2;float p3,p5; int p4;
Connection con6=DBInfo.getConnection();
String query6="select * from personalcare";
		 

	PreparedStatement ps6=con6.prepareStatement(query6);
	
	
	    
		     ResultSet res6=ps6.executeQuery();
		
		   while(res6.next())
		   { 
		   
		       p1=res6.getString(2);
			   p2=res6.getString(3);
			    p3=res6.getFloat(5);
				p4=res6.getInt(1);
				
				
			   
		   
		    %>


<li class="cbp-item web6">





    <a class="cbp-caption ">
        <div class="cbp-caption-defaultWrap">
            <img src="<%=p2 %>"width="100%"/>
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= p1 %></div>
                    <p class="cbp-l-caption-desc">INR <%= p3 %></p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open('PersonalCare1.jsp?id=<%= p4 %>','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>




<%

		   }

%>

</li></ul>


</div>




<!--pharmacy -->



<div id="grid-container7" class="cbp-l-grid-gallery">
<!--Sexual wellness products   -->

<ul>

<%
String se1,se2;float se3,se5; int se4;
Connection con7=DBInfo.getConnection();
String query7="select * from sexualwellness";
		 

	PreparedStatement ps7=con7.prepareStatement(query7);
	
	
	    
		     ResultSet res7=ps7.executeQuery();
		
		   while(res7.next())
		   { 
		   
		       se1=res7.getString(2);
			   se2=res7.getString(3);
			    se3=res7.getFloat(5);
				se4=res7.getInt(1);
			
				
			   
		   
		    %>


<li class="cbp-item web8">





    <a class="cbp-caption ">
        <div class="cbp-caption-defaultWrap">
            <img src="<%=se2 %>"width="100%"/>
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= se1 %></div>
                    <p class="cbp-l-caption-desc">INR <%= se3 %></p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open('SexualWellness1.jsp?id=<%= se4 %>','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>




<%

		   }

%>

</li></ul>

</div>



<div id="grid-container8" class="cbp-l-grid-gallery">

<!--Skin Care products   -->

<ul>

<%
String sk1,sk2;float sk3,sk5; int sk4;
Connection con8=DBInfo.getConnection();
String query8="select * from skincare";
		 

	PreparedStatement ps8=con8.prepareStatement(query8);
	
	
	    
		     ResultSet res8=ps8.executeQuery();
		
		   while(res8.next())
		   { 
		   
		       sk1=res8.getString(2);
			   sk2=res8.getString(3);
			    sk3=res8.getFloat(5);
				sk4=res8.getInt(1);
			
			   
		   
		    %>

<li class="cbp-item web9">





    <a class="cbp-caption ">
        <div class="cbp-caption-defaultWrap">
            <img src="<%=sk2 %>"width="100%"/>
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= sk1 %></div>
                    <p class="cbp-l-caption-desc">INR <%= sk3 %></p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open('SkinCare1.jsp?id=<%= sk4 %>','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>




<%

		   }

%>

</li></ul>
















</div>




<hr size="2"  width="94%"/>

   
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