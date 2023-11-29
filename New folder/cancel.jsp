<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Cancel booking</h2>
<hr>
<br>
<form action="cancel.jsp">
	<label>Enter the booking id : &nbsp;&nbsp;</label>
	<input type="text" name="bookid"> <br><br>
	<input type="submit" value="cancel booking">
</form>

<%
String bookid = request.getParameter("bookid");
if(bookid!=null) {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/relevel", "root", "root");
	Statement stmt = con.createStatement();
	stmt.executeQuery("delete from `BookingDetails` where `bookingid` = '"+bookid+"'");
	out.println("Cancelled the booking");
}
%>
</body>
</html>