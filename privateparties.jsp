
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
<link href="css/party.css" rel="stylesheet" type="text/css" />


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

<h2>PRIVATE EVENTS & MEETINGS</h2>

<table width="1015" height="211" border="0">
  <tbody>
    <tr>
      <td width="464" height="172"><table border="0">
        <tbody>
          <tr>
            <td>Starling Hotels has several venues within its portfolio<br>
of hotels that are ideal for individual private and<br>
social events. Whether it's an intimate dinner, large<br>
scale celebration or children's party we have lots of<br>
wonderful ideas to make your event special</td>
          </tr>
        </tbody>
      </table></td>
      <td width="431"><img src="pics/party.jpg" width="431" height="274" alt=""/></td>
    </tr>
  </tbody>
</table>
<br />
<table width="959" height="388" border="0">
  <tbody>
    <tr>
      <td width="449" height="384"><p><img src="pics/party4.jpg" width="433" height="345" alt=""/>&nbsp;&nbsp;&nbsp;</p></td>
      <td width="487"><p><img src="pics/party5.jpg" width="433" height="345" alt=""/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
      </p></td>
    </tr>
  </tbody>
</table>
<table width="961" border="0">
  <tbody>
    <tr>
      <td width="452">    <img src="../../../Users/Demon/Documents/Unnamed Site 2/button1.png" width="151" height="54"/></td>
      <td width="493"><img src="../../../Users/Demon/Documents/Unnamed Site 2/button3.png" width="142" height="54" alt=""/></td>
    </tr>
  </tbody>
</table>
</body>
</html>
