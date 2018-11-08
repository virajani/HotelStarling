
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
<p>&nbsp;</p>
<p class="pp">Children's Birthday Parties</p>
<p>&nbsp;</p>
<img src="pics/Birthday-Party2.jpg" width="1241" height="489" alt="" />
<h1>&nbsp;</h1>
<div>
  <div class="park"> Birthday Parties at The Starling Springs Water Park.
    <p>Guarantee that your birthday bash makes a splash by hosting your next birthday party at<a href=" contact@hotelstarling.com">The Starling Springs Water Park</a>,   the premier water adventure park in the Colombo area. Take a peek at   our birthday party packages below to see which one best fits your needs   or ask us about customizing one just for your group.<br>
    </p>
  </div>
  <p class="park">To Book Your Birthday Party, Contact Our Starling Water Park Sales Department At +94 914567893<br>
  Or <a href=" contact@hotelstarling.com"> contact@hotelstarling.com</a>.</p>
  <p>&nbsp;</p>
</div>
<table width="1023" height="990" border="0">
 <h1 class="table">  <tbody>
    <tr bgcolor="#6FEDD7">
     <td>-</td>
      <td>Splashtacular Birthday<br>
        Party Package</td>
      <td>ULTIMATE Birthday<br>
        Party Package</td>
      <td>Splish-Splash Birthday<br>
        Party Package</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Number of Wristbands</td>
      <td bgcolor="#F1B6EA">9 Party Participants<br>
        2 Adult Swim Bands</td>
      <td bgcolor="#F0E1AD">1 Free Birthday Child +<br>
        9 Party Participants<br>
        2 Adult Swim Bands</td>
      <td bgcolor="#9FF0A1">20 Party Participants</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Swim Time</td>
      <td bgcolor="#F1B6EA">Two (2)<br>
        Hours of Swim</td>
      <td bgcolor="#F0E1AD">Three (3)<br>
        Hours of Swim</td>
      <td bgcolor="#9FF0A1">Four (4)<br>
        Hours of Swim</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Party Room</td>
      <td bgcolor="#F1B6EA">One (1) Hour in a<br>
        Party Room<br>
        (Host Not Included)</td>
      <td bgcolor="#F0E1AD">One (1) Hour in a<br>
        Party Room<br>
        Including Party Host</td>
      <td bgcolor="#9FF0A1">One (1) Hour in a<br>
        Party Room<br>
        (Host Not Included)</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Cake</td>
      <td bgcolor="#F1B6EA">1/4 Sheet Birthday Cake<br>
        (Yellow, Chocolate, Marble or<br>
        Confetti w/inscription &amp; theme of<br>
        your choice)</td>
      <td bgcolor="#F0E1AD">1/4 Sheet Birthday Cake(Yellow, Chocolate, Marble or<br>
        Confetti w/inscription &amp; theme of<br>
        your choice)</td>
      <td bgcolor="#9FF0A1">1/4 Sheet Birthday Cake<br>
        (Yellow, Chocolate, Marble or<br>
        Confetti w/inscription &amp; theme of<br>
        your choice)</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Beverage</td>
      <td bgcolor="#F1B6EA">Beverage for<br>
        Each Participant</td>
      <td bgcolor="#F0E1AD">Beverage for<br>
        Each Participant</td>
      <td bgcolor="#9FF0A1">Beverage for<br>
        Each Participant</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Meal</td>
      <td bgcolor="#F1B6EA">-</td>
      <td bgcolor="#F0E1AD">Meal for each participant<br>
        (Hot Dog, Pizza Slice or Chicken<br>
        Strips meal w/Chips &amp; Beverage)<br>
        Same meal for each participant</td>
      <td bgcolor="#9FF0A1">Five (5) Large 16 inch<br>
        Pizzas<br>
        (Cheese, Sausage or Pepperoni)</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Arcade Game<br>
        Credits</td>
      <td bgcolor="#F1B6EA">Ten (10) Game Credits<br>
        per Participant</td>
      <td bgcolor="#F0E1AD">Twenty-Five (25)<br>
        Game Credits<br>
        per Participant</td>
      <td bgcolor="#9FF0A1">-</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Goodie Bags</td>
      <td bgcolor="#F1B6EA">-</td>
      <td bgcolor="#F0E1AD">Goodie Bag for<br>
        Each Participant</td>
      <td bgcolor="#9FF0A1">-</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Birthday Gift<br>
        for the Honoree</td>
      <td bgcolor="#F1B6EA">-</td>
      <td bgcolor="#F0E1AD">Yes</td>
      <td bgcolor="#9FF0A1">-</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Birthday Invitations</td>
      <td bgcolor="#F1B6EA">-</td>
      <td bgcolor="#F0E1AD">Yes</td>
      <td bgcolor="#9FF0A1">-</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Monday-Thursday</td>
      <td bgcolor="#F1B6EA">$165 (RS: 23000) per party<br>
        $17 (RS:2400) each additional<br>
        attendee</td>
      <td bgcolor="#F0E1AD">$250 (RS: 36000) per party<br>
        $28 (RS: 4000) each additional<br>
        attendee</td>
      <td bgcolor="#9FF0A1">$400 (RS: 60000) per party<br>
        $20 (RS: 3000) each additional<br>
        attendee</td>
    </tr>
    <tr>
      <td bgcolor="#F7D1D2">Friday-Sunday</td>
      <td bgcolor="#F1B6EA">$195 (RS: 30000) per party<br>
        $21 (RS: 3000) each additional<br>
        attendee</td>
      <td bgcolor="#F0E1AD">$300 (RS: 43000) per party<br>
        $33( RS: 5000) each additional<br>
        attendee</td>
      <td bgcolor="#9FF0A1">$475 (RS: 70000) per party<br>
      $25 (RS: 3500) each additionalattendee</td>
    </tr>
  </tbody></h1>
</table>
<table width="1025" height="47" border="0">
  <tbody>
    <tr bgcolor="#5CCCEF">
      <td width="1015" class="red">Prices subject to change. $100 (RS: 14500) non-refundable deposit due at time of   booking. Parties must be booked at least 3 business days in advance.   Final payment is due in advance. If booking less than a week in advance,   full balance is due at time of booking.</td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>


</body>
</html>
