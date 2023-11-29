<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plumbing | Booking</title>
</head>
<body>
<body>

<h2>
Get Plumbing Service
</h2>
<br>
<hr>
<form action="index.jsp" method="post">
	<label>Select your plumbing service: &nbsp;&nbsp;</label>
	<select name = "service">
	<option value="">--Select--</option>
	<option value="4414">Tap replacement</option>
	<option value="4415">Tap repair</option>
	</select>
	<br>
	<br>
	<label>Select an expert: &nbsp;&nbsp;</label>
	<select name = "expert">
	<option value="">--Select--</option>
	<option value="7758">Ramesh</option>
	<option value="4457">Suresh</option>
	</select>
	<br>
	<br>
	<label>Book your Slot</label>
	<input type="date" name="date">
	<br>
	<br>
	<button id="myBtn">Send a request </button>
	</form>
	
	<%
	String serviceid = request.getParameter("service");
	String expertid = request.getParameter("expert");
	String date = request.getParameter("date");
	if(serviceid!=null && expertid!=null && date!=null) {
	//	out.println(serviceid);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/relevel", "root", "root");
			Statement stmt = con.createStatement();
			stmt.executeQuery("insert into `BookingDetails` values( '"+ serviceid +"', '"+expertid+"','"+date+"'");
		}
		catch(Exception e) {
	//		out.println(e);
		}
	}
%>
<br><br>
	<div id="demo">
	</div>



</body>
</html>