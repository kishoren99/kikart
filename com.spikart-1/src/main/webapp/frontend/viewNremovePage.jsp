<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.List"%>
     <%@page import="com.spikart1.AdminDto.CustomerDto"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
*{

padding: 0px;
margin: 0px;
box-sizing: border-box;	  	    
}
body{
background-image: url("/merchantview.jpg");
background-repeat: no-repeat;
background-size: cover;
}
table {
	position: relative;
	top: 50px;
	left: 520px;
}
h1{
position: relative;
	top: 40px;
	left: 400px;
	 background: linear-gradient(to bottom left, yellow 20%, purple 50%, orange,green,blue);
    color: transparent;
    background-clip: text; 
    margin-top: 20px;
}
</style>
</head>
<body>
<% List<CustomerDto> l=(List<CustomerDto>)request.getAttribute("obj");%>
<table border=""  cellpadding="0px" cellspacing="10px">
<tr>
<th>id</th>
<th>name</th>
<th>email</th>
<th>mobile</th>
<th>password</th>
<th>otp</th>
<th>delete</th>
</tr>
<% if (l == null){%>
<h1>no customer records found here to view or Remove</h1>
<%} else {for (CustomerDto a : l) {%>
<tr>
<td><%=a.getId()%></td>
<td><%=a.getName()%></td>
<td><%=a.getEmail()%></td>
<td><%=a.getMobile()%></td>
<td><%=a.getPassowrd()%></td>
<td><%=a.getOtp()%></td>
<td><a href="deletebyidcustomer?id=<%=a.getId()%>">REMOVE</a></td>
</tr>
<%}}%>
</table>

</body>
</html>