
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/design/css/style.css">
  <script src="assets/web/assets/jquery/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/design/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/design-slider/style.css">
</head>
<body>




      <div class="container" style= "width:470px; height:270px;">
<div class="panel-group">
<div class="panel panel-info">
      <div class="panel-heading"><b>Register Here</b> </div>
      <div class="panel-body">
      
               
               <form role="form" action="MRegisterDone.jsp" method="post">
			   			   <br/>
              <input type="text" class="form-control" style="width:400px;" name="fname" id="InputName1" placeholder="First Name" required><br/>
			 <input type="text" class="form-control" style="width:400px;" name="lname" id="InputName2" placeholder="Last Name" required><br/>
			  <input type="email" class="form-control" style="width:400px;" name="email" id="InputName3" placeholder="Email" required><br/>
			   <input type="password" class="form-control" style="width:400px;" name="pass1" id="InputName4" placeholder="Password" required><br/>
			 <input type="password" class="form-control" style="width:400px;" name="pass2" id="InputName5" placeholder="Confirm Password" required><br/>
			   <input type="text" class="form-control" style="width:400px;" name="contact" id="InputName6" placeholder="Contact" required><br/>
					
					<div class="row">
									<div class="col-lg-2">
					  <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-left">
					</div>
					<div class="col-lg-9"  style="float:right">
					  <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-info pull-left"> 
					</div>
					
					
					
		</div>
					
					 
					
				
					
               
        </form>

</div>
</div>
</div>
</div>
</body>
</html>