<?php 
include('loginx.php'); 
if(isset($_SESSION['login_user']))
	{ 
	header("Location: profile.php"); 
	} 
?>

<html>
<head>
<title>Hotel Starling</title>
<link rel="icon" href="logo/icon.ico" type="image/x-icon">
<link href="css/menu.css" rel="stylesheet" type="text/css" />
</head>
<body background="backgrounds/image2.jpg">
<h1><a href="home.html"><img src="logo/logonew.gif"></a><a href="login.php"><img src="buttons/login.png" width="100" height="40" align="right"></a></h1>
<hr color="#FF0000">

<ul>
  <li><a class="active" href="home.html">Home</a></li>
  <li><a href="aboutus.html">About Us</a></li>
  <li><a href="Rooms.html">Rooms</a></li>
  <li class="dropdown">
    <a href="" class="dropbtn">Services</a>
    <div class="dropdown-content">
      <a href="privateparties.html">Private Parties</a>
      <a href="conferences.html">Conferences</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="" class="dropbtn">Weddings</a>
    <div class="dropdown-content">
      <a href="facilities.html">Facilities</a>
      <a href="menu.html">Menu</a>
      <a href="gallary.html">Gallery</a>
    </div>
    </li>
    <li><a href="location.html">Location</a></li>
  	<li><a href="contact.html">Contact Us</a></li>
    <table width="80" border="0" align="right">
  <tr>
    <td><a href="special.html"><img src="buttons/special.png" width="150" height="35"></a></td>
    <td><a href="reservation.aspx"><img src="buttons/reservation.png" width="150" height="40"></a></td>
  </tr>
</table>
</ul>

<hr color="#FF0000">
<h1 align="center">Member Login</h1>
<form id = "formlogin" method = "POST" action="profile.php" style="background:#FFF">
<table align = "center">
<tr>
<td>Username:</td>
<td><input type="text" id="username"/></td>
</tr>
<td>Password:</td>
<td><input type="password" id="password"/></td>
</tr>
<td></td>
<td><input type="submit" value="Login" id="btnlogin"/></td>
</tr>
</table>

</form>

<hr color="#FF0000">
<footer>
  <section>       
                <h3><b>	LOCATION:</b></h3>
                <p>Hotel Starling<br />
                No.123,<br />
                ABC Road,<br />
                Colombo 07.<br />
                Sri Lanka.<br /><br/>
               <b> TEL :</b> +94 914567893<br />
               <b> FAX :</b> +94 914567893<br />
               <b> EMAIL :</b> contact@hotelstarling.com</p>
            </section>
  <section>                
                <h3>Follow Us on</h3>
                <ul class="social">
                     <li><a href="http://fb.com" target="_blank"><img src="buttons/fb.png" width="50" height="50" /></a></li>
                     <li><a href="http://twitter.com" target="_blank"><img src="buttons/twitter.png" width="50" height="50" /></a></li>
                     <li><a href="http://instagram.com" target="_blank"><img src="buttons/insta.png" width="50" height="50" /></a></li>
                     
                </ul>     
            </section>
           <p align="center">Copyright © Hotel Starling - Colombo 07</p>
</footer>
</body>
</html>

