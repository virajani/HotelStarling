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
<%!

	String uname , pwd;
	private Connection getCon()
	{
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String su = new String("jdbc:mysql://localhost:3306/Hotel");
			con = DriverManager.getConnection(su,"root","tmj.123");
		}catch(Exception e)
		{
			System.out.println("Error Connection: " + e.getMessage());
		}finally{
			return con;
		}
	}
%>
<%

	if("POST".equalsIgnoreCase(request.getMethod()))
	{
		uname = request.getParameter("txtUname");
		pwd = request.getParameter("txtPwd");
		
		Connection con = getCon();
		
		
		try{
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select `password`,`utype` from `member` where `username`='"+uname+"'");
			if(rs.next())
			{
				String pwdd = rs.getString("password");
				int utype = rs.getInt("utype");
				if(pwd.equals(pwdd))
				{
					session.setAttribute("username", uname);
					session.setAttribute("usertype", utype);
					out.println("Login Success");
					response.sendRedirect("index.jsp");
				}
				else
				{
					out.println("Invalid Password");
				}	
			}
			else
			{
				out.println("Invalid Username or Password");
			}
			
			
		}catch(Exception e)
		{
			System.out.println("Errord: " + e.getMessage());
			out.println("Server Internal Error");	
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
