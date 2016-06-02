
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>set Doctor info</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	 <link href="bootstrap.css" rel="stylesheet">
    
    <link href="bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    
                                   <link rel="shortcut icon" href="jecrc-logo.jpeg">
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/bootstrap.css">
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>
<body>

<div class="fluid-container" align="center">

<div class="panel panel-default">
  <div class="panel-body">

<div class="panel panel-default">
  <div class="panel-body">


<%@ include file="Header.jsp" %>
<br/>
<br/>
<br/>

    

            
              <div class="panel panel-primary" style="width:600px" >
      <div class="panel-heading">Set Doctor Info</div>
      <div class="panel-body" align="center">
		<table>
               <form role="form" class="form-horizontal" action="SetDInfo1.jsp" method="post" align="center">
			   
			   <tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Name</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="text" class="form-control width="100px" name="dname" id="subj" placeholder="Doctor name" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	
	<tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Email</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="email" class="form-control width="100px" name="email" id="subj" placeholder="Email" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	<tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Image</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="file" class="form-control width=100px " name="dimage" id="subj2" placeholder="choose image" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	
	 <tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Qualification1</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="text" class="form-control width="100px" name="q1" id="subj" placeholder="Qualification1" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	
	 <tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Qualification2</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="text" class="form-control width="100px" name="q2" id="subj" placeholder="Qualification2" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	
	
	<tr><td>   
					<div class="form-group">
					<div class="row"  >
      <label class="control-label col-sm-1" for="sel1">Catagory:</label></td>
	  <td><div class="col-sm-9">
      <select class="form-control width="100px" name="specification">
        <option>Dentist</option>
        <option>Ent</option>
        <option>eye care</option>
        <option>Skin care</option>
		<option>Ayurveda</option>
		<option>General Physicians</option>
		<option>Ophthalmologist</option>
		<option>Dermatologist</option>
		<option>Homeopath</option>
		<option>Urologist</option>
				<option>Cardiologist</option>
		<option>Gastroenterologist</option>
		<option>Phychiatrist</option>
		<option>Neurologist</option>
		select></div></td>
      <br>
      </div></div></tr>
	
	
	
	
	 
	  	
	<tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Fees</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="text" class="form-control width="100px" name="fees" id="subj1" placeholder="fees" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	
	<tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Experience</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="text" class="form-control width="100px" name="exp" id="subj1" placeholder="experience" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	
	<tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Clinic</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="text" class="form-control width="100px" name="cname" id="subj1" placeholder="clinic name" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	
	
	<tr><td>   
					<div class="form-group">
					<div class="row"  >
      <label class="control-label col-sm-1" for="sel1">Location:</label></td>
	  <td><div class="col-sm-9">
      <select class="form-control width="100px" name="location">
        <option>Jhotwara</option>
        <option>M.I.Road</option>
        <option>Malviya nagar</option>
        <option>Mansarovar</option>
		<option>Ashok nagar</option>
		<option>Bapu nagar</option>
		<option>Lal kothi</option>
		
      </select></div></td>
      <br>
      </div></div></tr>
	
                     
	<tr><td>
	<tr>
	<div class="form-group"> 
	<div class="row">
					<td></td><td>
					<div class="col-lg-4">
					  <input type="submit" name="submit" id="submit" value="submit" class="btn btn-info ">
					</div>
		</td> <td>
		<div class="col-lg-4">
					  <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-info "> 
					</div></td> 
					</div></div>
	</tr>
	</table>

	
					
					 
					
				
					
               
        </form></div>
		</div><br><br>

</div>

</div>

</div>


</body>
</html>
