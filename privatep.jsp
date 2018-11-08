
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

<style>
body {font-family:Arial, Helvetica, sans-serif; font-size:12px;}

.fadein { position:relative; height:332px; width:500px; }
.fadein img { position:absolute; left:0; top:0; }

.fadelinks, .faderandom { position:relative; height:332px; width:500px; }
.fadelinks > *, .faderandom > * { position:absolute; left:0; top:0; display:block; }

.multipleslides { position:relative; height:332px; width:500px; float:left; }
.multipleslides > * { position:absolute; left:0; top:0; display:block; }
</style>

<script src="Scripts/jsformovingslides.js"></script>
<script>

$(function(){
	$('.fadein img:gt(0)').hide();
	setInterval(function(){$('.fadein :first-child').fadeOut().next('img').fadeIn().end().appendTo('.fadein');}, 3000);
});
</script>

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
<p class="pp">Private Party</p>
<br />

<div class="fadein">
<img src="pics/party7.jpg" width="1330" height="300" alt="" />
<img src="pics/party1.jpg" width="1330" height="300" alt="" />
<img src="pics/party2.jpg" width="1330" height="300" alt="" />
</div>

<table width="1042" height="163" border="0">
  <tbody>
    <tr>
      <td class="ppp" width="229">&nbsp;</td>
      <td class="ppp" width="803">The Starling Hotel has a variety of Suites to cater for all sorts   of   private dining and function requirements. These Suites can     accommodate from 10 guests for Private Dining up to 300 for a Banquet,     and everything in between!<br>
We often cater for Birthday Parties, Live Music Events,   Fundraisers,   Formal Dinners, Sporting Clubs, Family Occasions, Hen   Parties, and many   more.<br>
All Events are managed by the dedicated Events Team, who tailor each     individual booking to the needs and budget of the customer. <br>
Many rooms have private bar facilities and dance floor areas, some have their own independent entrance. <br>
The Events Team will be able to advise you about the most suitable space     for your function, and help organise any other elements, such as   music   or decorations.</td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>


</body>
</html>
