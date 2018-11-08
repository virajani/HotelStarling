<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String memb="";
	String utype="";
	
	if(session.getAttribute("username")==null)
	{
		memb = "<a href=\"login.html\"><img src=\"buttons/login.png\" width=\"100\" height=\"40\" align=\"right\"></a>";
	}
	else
	{
		memb="<a href=\"logout.jsp\"><img src=\"buttons/logout.png\" width=\"100\" height=\"40\" align=\"right\"></a>";
		if(String.valueOf(session.getAttribute("usertype"))=="1")
		{
			utype="";
		}
		else
		{
			utype="<li><a href=\"admin.jsp\">Admin Panel</a></li>";
		}
	}
	
 %>


<html>
<head>
<title>Hotel Starling</title>
<link rel="icon" href="logo/icon.ico" type="image/x-icon">

<link href="css/styles.css" rel="stylesheet" type="text/css" />
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
  	<%=utype %>
    <table width="80" border="0" align="right">
  <tr>
    <td><a href="special.jsp"><img src="buttons/special.png" width="150" height="35"></a></td>
    <td><a href="Reserv.jsp"><img src="buttons/reservation.png" width="150" height="40"></a></td>
  </tr>
</table>
</ul>

<hr color="#FF0000">


<form id = "form_reservation"  name="form_reservation" method = "POST" action="memreserv.jsp" class="frm">
	<h1 align="center">Reservation</h1>
	<span class="err1">* required field</span>
	<table class="frm_tbl">
		<tr>
			<td class="frm_td">
				<strong>Arrival</strong><span class="err">*</span><span class="err" id="sp_arv" hidden="hidden">Required Field</span><br>
				<input type="datetime" id="dt_arv" name="dt_arv" form="form_reservation" class="frm_item"> 
			</td>
			<td class="frm_td">
				<strong>Departure</strong><span class="err">*</span><span class="err" id="sp_dep" hidden="hidden">Required Field</span><br>
				<input type="datetime" id="dt_dep" name="dt_dep" form="form_reservation" class="frm_item"> 
			</td>
		</tr>
		<tr>
			<td class="frm_td">
				<strong>No. Rooms</strong><span class="err">*</span><span class="err" id="sp_norm" hidden="hidden">Required Field</span><br>
				<input type="text" id="txt_rooms" name="txt_rooms" form="form_reservation" class="frm_item"/>
			</td>
			<td class="frm_td">
				<strong>No. Guests</strong><span class="err">*</span><span class="err" id="sp_nogu" hidden="hidden">Required Field</span><br>
				<input type="text" id="txt_guests" name="txt_guests" form="form_reservation" class="frm_item"/>
			</td>
		</tr>
		<tr>
			<td class="frm_td">
				<strong>Room Type</strong><br>
				<select id="sel_room_type" name="sel_room_type" form="form_reservation" class="frm_item1">
					<option value="-" selected="selected">Please Select</option>
					<option value="1">Luxury</option>
					<option value="2">Economy</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<input type="button" onClick="_validate()" id="btn_sub" form="form_reservation" value="submit"> 
			</td>
		</tr>
	</table>
	<script type="text/javascript">
	function _validate()
	{	
		var arv="";
		var dep="";
		arv = document.getElementById("dt_arv").value;
		var sp_arv = document.getElementById("dt_arv");
		dep = document.getElementById("dt_dep").value;
		var sp_dep = document.getElementById("dt_dep");
		var rooms = document.getElementById("txt_rooms").value;
		var sp_norm = document.getElementById("sp_norm");
		var guests = document.getElementById("txt_guests").value;
		var sp_nogu = document.getElementById("sp_nogu");
		
		if(arv=="")
		{
			sp_arv.hidden="";
		}
		else if(dep=="") {
			sp_arv.hidden="hidden";
			sp_dep.hidden="";
		}
		else if(rooms==""){
			sp_dep.hidden="hidden";
			sp_norm.hidden="";
		}
		
		else if(guests==""){
			sp_norm.hidden="hidden";
			sp_nogu.hidden="";
		}
		else{
			sp_nogu.hidden="hidden";
			document.getElementById("form_reservation").submit();
		}
	}
</script>
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

