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



<section class="mbr-section mbr-section--relative mbr-section--fixed-size" id="content5-3" style="background-color: rgb(128, 128, 128);>
    
    
<div id="portfolio-nospace" class="clearfix bodyColorGray ">
<div class="col-md-12 text-center animated bounceInDown "style="color:#fff" data-wow-duration=".115s">
    <hr size="2"  width="94%"><h1>Our Products</h3><br>

</div>
<div>

 

<div class="fusion-portfolio wrapper-portfolio-no-space cbp-4-col">
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
<%
String s1,s2;float s3,s5; int s4;
Connection con=DBInfo.getConnection();
String query="select * from babycare";
		 

	PreparedStatement ps=con.prepareStatement(query);
	
	
	    
		     ResultSet res=ps.executeQuery();
		
		   while(res.next())
		   { 
		   
		       s1=res.getString(2);
			   s2=res.getString(3);
			    s3=res.getFloat(5);
				s4=res.getInt(1);
				System.out.print(s4);
				
			   
		   
		    %>

<div id="grid-container" class="cbp-l-grid-gallery">
<ul>

<!--baby care products   -->
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src=<%=s2 %> alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text"><%= s1 %></div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ENFA0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/DABU0011_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/COMP0043_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/COMP0003_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BOUR0009_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BOUR0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BABY0009_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AVEN0007_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/PAMP0070_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/MAMY0023_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web1">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/CERE0058_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<%

		   }

%>



<!--health needs products   -->
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/EQUA0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/DABU0032_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/CARE0075_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BORO0007_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BORO0016_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BAND0011_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AMRU0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/SAVL0002_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/KAJA0002_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ENO_0013_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/IODE0009_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web2">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AMRU0034_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>






<!--Home Needs products   -->
<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ROGH0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/PEDI0028_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ODOM0008_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LINZ0002_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>

<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/GLIN0009_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BURN0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>

<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ALL_0031_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/GOOD0033_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/MORT0010_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/DIAP0025_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>

<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AMRU0015_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>

<li class="cbp-item web3">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ALL_0003_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>



<!--hair care products   -->
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AFTE0002_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BIOT0308_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0074_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0068_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0039_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0037_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0036_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0034_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0031_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0016_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/HIPH0022_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web4">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BIO_0050_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>







<!--Nutrition products   -->
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BRIT0061_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BOOS0002_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ARJU0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ANOO0006_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/RITE0207_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/RITE0189_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/PROT0022_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/DABU0097_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/EATR0004_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/DABU0099_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/GLUC0017_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web5">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/GLUC0095_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>







<!--Persoanl  products   -->
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BIO_0060_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/COLG0068_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/L_OR0062_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/HIPH0038_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LAKM0226_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ADID0002_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/WILD0088_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ADID0038_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ANOO0010_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ASWI0008_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AXE_0007_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web6">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BIOT0028_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>



<!--Pharmacy products   -->
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Baby-Care.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Health-Needs.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Home-Needs.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Hair-Care.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Nutrition.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Personal-Care.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/pharmacybnr-dec.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Sexual-Wellness.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Skin-Care.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Baby-Care.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Baby-Care.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web7">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/Baby-Care.png" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>










<!--Sexual wellness products   -->
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/SKOR0005_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/MOOD0005_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/KS_N0002_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/KS_L0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/KS_20001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/KOHI0010_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/K.S_0002_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/DURE0003_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/CREZ0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/CLIM0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/STER0045_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web8">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/MOOD0011_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>





<!--Skin Care products   -->
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AYUR0030_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AXE_0011_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Health-Needs</div>
                    <p class="cbp-l-caption-desc">Buy health related product like balm,lip guard,iodex etc.</p>
                    <div class="hover-visit-page">                    
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/AVEL0010_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Home-Needs</div>
                    <p class="cbp-l-caption-desc">Buy home need products like all-out,vim-bar,Detol etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ASOK0003_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Hair-Care</div>
                    <p class="cbp-l-caption-desc">Buy online shampoo,conditioner,hair-gel etc.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/ANNE0001_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Nutrition</div>
                    <p class="cbp-l-caption-desc">Buy Nutrition related product online.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/OLAY0058_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Personal-Care</div>
                    <p class="cbp-l-caption-desc">Buy online Hair-oil,saving cream,Bath soap etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LAKM0030_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Pharmacy</div>
                    <p class="cbp-l-caption-desc">Buy Medicines Online </p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/HIMA0368_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Sexual-Wellness</div>
                    <p class="cbp-l-caption-desc">Buy Sexual Wellness online at best prices from Kamasutra & Durex etc. brands.</p>
                    <div class="hover-visit-page">                      
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/LORE0247_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Skin-Care</div>
                    <p class="cbp-l-caption-desc">Face-wash,Body-Lotion,Cold-cream etc.</p>
                    <div class="hover-visit-page">                       
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/EVER0125_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/CLEA0136_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>
<li class="cbp-item web9">
    <a class="cbp-caption">
        <div class="cbp-caption-defaultWrap">
            <img src="images1/BIO_0031_L.jpg" alt="" width="100%">
        </div>
        <div class="cbp-caption-activeWrap">
            <div class="cbp-l-caption-alignCenter">
                <div class="cbp-l-caption-body">
                    <div class="cbp-l-caption-text">Baby-Care</div>
                    <p class="cbp-l-caption-desc">Buy Baby Products online at lowest price like  Baby Gift Sets, Diapers, Strollers & Prams etc.</p>

                    <div class="hover-visit-page">
                        <button class="hover-visit-page-item" type="button"
                                onclick="window.open(' ','_blank');">
                            Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </a>
</li>




</ul>
</div>
</div>
</div>
<hr size="2"  width="94%"">
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