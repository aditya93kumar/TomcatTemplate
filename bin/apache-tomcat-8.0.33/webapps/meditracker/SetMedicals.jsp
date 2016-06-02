
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>set Paper | Portal</title>
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


<%@ include file="Header.jsp" %>
<br/>

    

            
              <div class="panel panel-primary" style="width:600px" >
      <div class="panel-heading">Set Medical stuffs</div>
      <div class="panel-body" align="center">
		<table>
               <form role="form" class="form-horizontal" action="SetMedicals1.jsp" method="post" align="center">
                     <tr><td>   
					<div class="form-group">
					<div class="row"  >
      <label class="control-label col-sm-1" for="sel1">Catagory:</label></td>
	  <td><div class="col-sm-9">
      <select class="form-control width="100px" name="sel1">
        <option>haircare</option>
        <option>babycare</option>
        <option>healthneeds</option>
        <option>homeneeds</option>
		<option>skincare</option>
		<option>nutrition</option>
		<option>personalcare</option>
		<option>sexualwellness</option>
      </select></div></td>
      <br>
      </div></div></tr>
    
	<tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Product</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="text" class="form-control" width="200px" name="pname" id="subj" placeholder="product name" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	<tr><td>
	
	<tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Image</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="file" class="form-control width=300px " width="200px" name="pimage" id="subj2" placeholder="choose image" required>
                        
                    </div></td>
	   </div>
    </div></tr>
	<tr><td>
	
	
	<div class="form-group"> 
<div class="row"  >	
	
       <label class="control-label col-sm-1" for="sel2">Descripton:</label></td> 
	   <td colspan="3"> <div class="col-sm-12" >
                        <textarea class="form-control width="100px" name="des" placeholder="Descripton...." required></textarea> 
                        
                    </div></td> 
	   </div>
	   </div>
	</tr>
	<tr><td>
    <div class="form-group"> 
	
       <div class="row"  >
				    <label class="control-label col-sm-1" for="sel4">Price</label></td>
					<td>
                    <div class="col-sm-9" style="width:160px;">
                        <input type="text" class="form-control width="100px" name="price" id="subj1" placeholder="price" required>
                        
                    </div></td>
	   </div>
    </div></tr>
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
