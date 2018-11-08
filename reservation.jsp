<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.IOException,java.sql.*,database.Connect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Starling</title>
<link rel="icon" href="logo/icon.ico" type="image/x-icon">
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body background="backgrounds/image2.jpg">
<h1><a href="index.jsp"><img src="logo/logonew.gif"></a><a href="login.html"><img src="buttons/login.png" width="100" height="40" align="right"></a></h1>
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

<%
	if("POST".equalsIgnoreCase(request.getMethod()))
	{
		String title="",fname="" , lname="" , country ="",email="",arrival="",departure="";
		Integer phone = 0, rm_type= 0 , no_rm=0 , no_gu=0; 
		
		Connection con;
		Statement st;
		
		try{
			title = request.getParameter("sel_title");
			fname = request.getParameter("txt_fname");
			lname = request.getParameter("txt_lname");
			country = request.getParameter("sel_country");
			email = request.getParameter("txt_email");
			phone = Integer.parseInt(request.getParameter("txt_phone"));
			no_rm = Integer.parseInt(request.getParameter("txt_rooms"));
			no_gu = Integer.parseInt(request.getParameter("txt_guests"));
			rm_type = Integer.parseInt(request.getParameter("sel_room_type"));
			
			Connect c= new Connect();
			con = c.getCon();
			st=con.createStatement();
			String sql = "insert into `reservation` (`title`,`fname`,`lname`,`country`,`phone`,`email`,`arrival`,`departure`,`noof_rooms`,`noof_guests`,`room_type`) values ('"+title+"','"+fname+"','"+lname+"','"+country+"',"+phone+",'"+email+"','"+arrival+"','"+departure+"',"+no_rm+","+no_gu+","+rm_type+")";
			st.executeUpdate(sql);
			out.println("Reservation Request Successful");
		}
		catch(SQLException e)
		{
			out.println("Internal Server Error");
			System.out.println("Error In SQL : " + e.getMessage());
		}
		catch(NumberFormatException e)
		{
			out.println("<font color=\"red\">Error In Reservation Form Data</font>");
		}
	}
%>




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
