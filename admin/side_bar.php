<div class="sidebar-menu">
<header class="logo">
<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="index.php"> <span id="logo"> <h1>Admin panel</h1></span> 
<!--<img id="logo" src="" alt="Logo"/>--> 
</a> 
</header>
<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
<!--/down-->
	<div class="down">



<img style='height:70px;width:70px;' src="images/b.jpg">
	
	
<a href="index.php"><span class=" name-caret">
<?php
if(isset($_SESSION['name']))
{
	$name=$_SESSION['name'];
	echo ucwords($name);
}


?>


</span></a>
<p>System Administrator in Company</p>

</div
<!--//down-->
<div class="menu">
<ul id="menu" >
<?php
if(isset($_SESSION['login']))
{
	?>
<li><a href="index.php"><i class="fa fa-tachometer"></i> <span>Account</span></a></li>
<li><a href="additem.php"><i class="fa fa-tachometer"></i> <span>Add New Medicine</span></a></li>
<li><a href="view_item_list.php"><i class="fa fa-tachometer"></i> <span>View Medicine list</span></a></li>

<li><a href="logout.php"><i class="fa fa-tachometer"></i> <span>Logout</span></a></li>
<?php }else{ ?>
<li><a href="login.php"><i class="fa fa-tachometer"></i> <span>Login</span></a></li>
<?php } ?>
</ul>
</div>
</div>