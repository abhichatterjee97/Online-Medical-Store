<?php require_once"dbconfig.php";
if(isset($_SESSION['login']))
{

	
}
else
{
	header("location:login.php");
}

?>
<!DOCTYPE HTML>
<html>
<head>
<?php include"head.php";?> 
<script type="text/javascript" src="js/nicEdit-latest.js"></script>

</head>
<body>
<div class="page-container">
<div class="left-content">
<div class="inner-content">

<div class="outter-wp">
<div class="sub-heard-part">
<ol class="breadcrumb m-b-0">
<li><a href="index.php">Home</a></li>
<li class="active">Add Medicine</li>
</ol>
</div>
<div class="graph-visual tables-main">
<h2 class="inner-tittle">Add Medicine</h2>
<div class="graph" style="height:1000px">
<div class="block-page">
<p>
<h3 class="inner-tittle two" style="font-weight:bold">MEDICINE</h3>
<div class="form-body">
<form class="form-horizontal" action="myphp.php" method="post" enctype="multipart/form-data"> 

<div class="form-group">
<label for="inputPassword3" id="errortitle" class="col-sm-2 control-label">Title</label> 
<div class="col-xs-6"> 
<input type="text" class="form-control" id="title" name='title' placeholder="Title"> 
</div>
</div>
<div class="form-group">
<label for="inputPassword3" id="errortitle" class="col-sm-2 control-label">Category</label> 
<div class="col-xs-6"> 
<select class="form-control" name="category">
<option>Select Category</option>
<option value="HOMEOPATHY">HOMEOPATHY</option>
<option value="VITAMINSSUPPLEMENTS">VITAMINS & SUPPLEMENTS</option>
<option value="AYURVEDA">AYURVEDA</option>
<option value="HEALTHFOOdDRINKS">HEALTH FOOD & DRINKS</option>
<option value="HEALTHCAREDEVICES">HEALTHCARE DEVICES</option>
<option value="SKINCARE">SKIN CARE</option>
</select>
</div>
</div>

<div class="form-group">
<label for="inputPassword3" id="errormetakey" class="col-sm-2 control-label">Rating</label> 
<div class="col-xs-6"> 
<input type="text" class="form-control" name="rating" min="1" max="5"  value="5" placeholder="Rating">
</div>
</div>

<div class="form-group"> 
<label for="inputEmail3" id="image" class="col-sm-2 control-label">Image</label> 
<div class="col-xs-6">
<input type="file" class="form-control col-xs-4" id="image"  name="image" > 
</div> 
</div>

<div class="form-group"> 
<label for="inputEmail3" id="video_link" class="col-sm-2 control-label">Price</label> 
<div class="col-xs-6">
<input type="text" class="form-control col-xs-4" id="video_link" name="price" placeholder="Price"> 
</div> 
</div>

<div class="form-group"> 
<label for="inputEmail3" id="cpassworderror" class="col-sm-2 control-label">Description</label> 
<div class="col-xs-6">
 <textarea name="discription" class="form-control col-xs-4">
</textarea>
</div>
</div>
<div class="col-xs-6"> 
<center><input type="submit" class="btn btn-info" name="elect_submit" id="elec_submit" value="SUBMIT"></center> </div> </form> 
</div>

</p>
</div>

</div>

</div>
</div>
<?php include"footer.php";?>

</div>
</div>
<?php include"side_bar.php";?>
</div>

</body>
</html>