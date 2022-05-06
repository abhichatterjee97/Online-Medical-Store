<?php
require_once"dbconfig.php";
##################################################
if(isset($_REQUEST['signup']))
{
	$name=trim($_REQUEST['name']);
	$mobile=trim($_REQUEST['mobile']);
	$email=trim($_REQUEST['email']);
	$password=trim($_REQUEST['password']);
	$cpassword=trim($_REQUEST['cpassword']);
	$valid=true;
	$query="insert into user (name,mobile,email,password)
	values
	('$name','$mobile','$email','$password')";
	if(checklength($name,2))
	{
		echo"invalid name";
		$valid=false;
	}
	if(!checkmobile($mobile))
	{
		echo"invalid mobile";
		$valid=false;
	}
	if(!checkemail($email))
	{
		echo"invalid email";
		$valid=false;
	}
	if(checklength($password, 6))
	{
		echo"invalid password";
		$valid=false;
	}
	if($password!=$cpassword)
	{
		echo"password not match";
		$valid=false;
	}
	if($valid)
	{
	$n=iud($query);
	if($n==1)
	{
		echo"1";
	}
	else
	{
		echo"something wrong";
	}
	}
	}
###########################################################
	if(isset($_REQUEST['login']))
	{
		
	$email=trim($_REQUEST['email']);
	$password=trim($_REQUEST['password']);
	
	$valid=true;
	$query="select * from admin where email='$email' and password='$password'";
	
	if(!checkemail($email))
	{
		echo"invalid email";
		$valid=false;
	}
	if(checklength($password, 6))
	{
		echo"invalid password";
		$valid=false;
	}
	
	if($valid)
	{
	$login_data=select($query);
	$n=mysqli_num_rows($login_data);
	if($n==1)
	{
		while($data=mysqli_fetch_array($login_data))
		{
		extract($data);
		
		}
		
		$_SESSION['adminid']=$id;
		$_SESSION['name']=$name;
		$_SESSION['image']=$image;
		$_SESSION['login']="yes";
		
		echo"1";
	}
	else
	{
		echo"email or password is incorrect";
	}
	}
		
	}



##########################################################################
if(isset($_REQUEST['elect_submit']))
{
	extract($_REQUEST);
	$error=$_FILES["image"]["error"];

$name=$_FILES["image"]["name"];
$type=$_FILES["image"]["type"];
$size=$_FILES["image"]["size"];
$tmp_name=$_FILES["image"]["tmp_name"];

	
	echo $query="INSERT INTO  `items`( `Title`, `category`, `elec_rating`, `image`, `discription`, `price`)
	VALUES ('$title','$category','$rating','$name','$discription','$price')";
	
	move_uploaded_file($tmp_name,"images/$name");
	
	$n=iud($query);
	 if($n==1)
	 {
		 
		 echo"<script>alert(' successful');
		 window.location='view_item_list.php';
		 </script>";
	 }
	 
	
	
	else
	{
		echo"Medicineis not upload";
	}
}



	####################################################################
if(@$_REQUEST['dele']=='yes')
{
$id=$_REQUEST['id'];

		 
$n=iud("DELETE FROM `cart` WHERE cartid='$id'");
if($n==1)
{
	echo"<script>
	
	alert('Successful');
		 window.location='mycart.php';
		 </script>";
}
		 
else
{
	echo"<script>alert('Something Wrong');
		 window.location='mycart.php';
		 </script>";
}
}	
	
	
	
##########################################################################
	
	   
	
	
	










?>