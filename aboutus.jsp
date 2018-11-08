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
<footer>
<section>
 <font color = "white" size="4px">		Hotel Starling is a leader in the global hotel industry, with a distinctive collection and a worldwide reputation for excellence. Our diverse portfolio includes historic icons, elegant resorts and modern city center properties. From the beaches of Hawaii and Bermuda to the heart of Colombo City, all of our hotels offer a superior guest experience that is uniquely ''Starling". <br /><br />

Hotels under the Starling banner offer guests an extraordinary place that is created by combining unique architecture and structure, expressive decor and artistry, and magnificent features all in one great location. Add great service to this and the result is an extraordinary experience that would make your memory of Starling Hotels & Resorts a long and lasting one. Most of our hotels were among the first buildings to be erected in young cities across North America. Few hotels can boast that their communities literally grew up around them. Today, we have added modern city center properties to our collection, with core locations that allow you to join the hustle and bustle of the city, take part in the action of the business district, and enjoy the culture, the lights and sounds of street life. <br /><br />

Our collection includes such fine luxury resorts as the Starling Miramar Hotel Santa Monica, and The Starling San Francisco, steeped in history and a city landmark. Our resorts are situated in some of the most breathtaking and pristine areas in the world, and travelers from across the globe associate Starling with the most inviting beaches, challenging golf courses and exhilarating ski hills. <br /><br />

We guarantee consistency throughout our collection of hotels and resorts by adhering strictly to company-wide standards. Central purchasing ensures the same high-quality amenities are available to all guests wherever they visit. Features such as our Starling President's Club recognition program, our Starling Gold ''hotel within a hotel'', and our Business Centers cater to the needs of discerning travelers. All these and more make every Starling hotel an extraordinary place, and your stay, an extraordinary experience.<br /> </font>
</section>
</footer>

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
