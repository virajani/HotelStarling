<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>

<% String memb="";
	
	if(session.getAttribute("username")==null)
	{
		memb = "<a href=\"login.html\"><img src=\"buttons/login.png\" width=\"100\" height=\"40\" align=\"right\"></a>";
	}
	else
	{
		memb="<a href=\"logout.jsp\"><img src=\"buttons/logout.png\" width=\"100\" height=\"40\" align=\"right\"></a>";
	}

	

 %>
<html>
<head>
<title>Hotel Starling</title>
<link rel="icon" href="logo/icon.ico" type="image/x-icon">
<link href="css/menu.css" rel="stylesheet" type="text/css" />
</head>
<body background="backgrounds/image2.jpg">
<h1><a href="index.jsp"><img src="logo/logonew.gif"></a><% out.println(memb); %></h1>
<hr color="#FF0000">
<ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="aboutus.jsp">About Us</a></li>
  <li><a href="rooms/roomtypes.jsp">Rooms</a></li>
  <li class="dropdown">
    <a href="" class="dropbtn">Services</a>
    <div class="dropdown-content">
      <a href="privateparties&childrenbday.jsp">Private Events</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="" class="dropbtn">Weddings</a>
    <div class="dropdown-content">
      <a href="facilities.jsp">Facilities</a>
      <a href="menu.jsp">Menu</a>
      <a href="gallary.jsp">Gallery</a>
    </div>
    </li>
    <li><a href="location.html">Location</a></li>
  	<li><a href="contact.jsp">Contact Us</a></li>
    <table width="80" border="0" align="right">
  <tr>
    <td><a href="special.jsp"><img src="buttons/special.png" width="150" height="35"></a></td>
    <td><a href="Reserv.jsp"><img src="buttons/reservation.png" width="150" height="40"></a></td>
  </tr>
</table>
</ul>

<hr color="#FF0000">
<h1 align="center"><font color="platinum">PLATINUM MENU</font></h1>
<table>

<tr>
<td width="400"></td>
<td><h3><b>1. Welcome Drink (One of your choice)</b></h3>
<li>Orange</li><br />
<li>Mix Fruits</li><br />
<li>Mango</li><br />
<li>Black Current</li><br />
<li>Mandarin</li><br />
<li>Guava & Strawberry</li><br /><br /><br />
</td>
</tr>
<tr>
<td width="400"></td>
<td><h3><b>2. Soup (One of your choice)</b></h3>
<li>Vegetable Soup</li><br />
<li>Chicken Soup</li><br />
<li>Cream Corn & Egg Soup</li><br />
<li>Brown Onion Soup</li><br />
<li>Cream of Pumpkin</li><br /><br /><br />

</td>
</tr>

<tr>
<td width="400"></td>
<td><h3><b>3. Rice (Three of your choice)</b></h3>
<li>Vegetable Fried Rice / Yellow Rice / Counryn Rice / White Rice</li><br />
<li>Buriyani Rice (not including meat)</li><br /><br /><br />
</td>
</tr>

<tr>
<td width="400"></td>
<td><h3><b>4. Main Dishes</b></h3>
<li>Vegetable Noodles</li><br />
<li>Chicken (Red Curry / Black Curry / Devilled Chicken)</li><br />
<li>Fish (Red Thick Curry / Fish Ambulthiyal / Devilled Fish)</li><br />
<li>Vegetables (BrijolMoju / Dhal Curry / Potato Tempered / Green Piece & Carrot Curry)</li><br /><br /><br />
</td>
</tr>

<tr>
<td width="400"></td>
<td><h3><b>5. Salads</b></h3>
<li>Tomato Salad / Carrot</li><br />
<li>Green Chillie & Onion Salad</li><br />
<li>Cabage & Pineapple Salad</li><br />
<li>Cucumber, Onion & Green Chillie Salad</li><br /><br /><br />
</td>
</tr>

<tr>
<td width="400"></td>
<td><h3><b>6. Pickle</b></h3>
<li>Malay or Sinhala </li><br /><br /><br />
</td>
</tr>

<tr>
<td width="400"></td>
<td><h3><b>7. Condiments</b></h3>
<li>Fish Cutlets</li><br />
<li>Chutney</li><br />
<li>Fried dry chilie or Green Chillie</li><br />
<li>Chillie Paste</li><br /><br /><br />
</td>
</tr>

<tr>
<td width="400"></td>
<td><h3><b>8. Dessorts</b></h3>
<li>Ice Cream</li><br />
<li>Fresh Fruits cuts</li><br />
<li>Rainbow Pudding</li><br />
<li>One of your choices (Watalappan / Chocolate Gatocake / Caramal Pudding / Chocolate Cake)</li><br /><br /><br />
</td>
</tr>

<tr>
<td width="400"></td>
<td><h3><b>9. Ice Coffee</b></h3>
<br /><br /><br />
</td>
</tr>
</table>

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
