<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
     <%@page import="com.spikart1.AdminDto.MerchantDto"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	left: 500px;
}
h1{
position: relative;
	top: 40px;
	left: 570px;
	 background: linear-gradient(to bottom left, yellow 20%, purple 50%, orange,green,blue);
    color: transparent;
    background-clip: text; 
    margin-top: 20px;
}
</style>

</head>
<body>
<% List<MerchantDto> l=(List<MerchantDto>)request.getAttribute("obj");%>
<table border="" cellpadding=10px;>
<tr>
<tr border=" " >
<th>id</th>
<th>address</th>
<th>email</th>
<th>GSTN</th>
<th>PAN_NO</th>
<th>Password</th>
<th>phone_no</th>
<th>merchant_name</th>
<th>Delete</th>
</tr>
<%if (l == null) { %>
<h1>No data available to display.</h1>
 <%} else { for (MerchantDto a : l) {%>
 <tr>
<td><%=a.getM_id()%></td>
<td><%=a.getM_company_address()%></td>
<td><%=a.getEmail()%></td>
<td><%=a.getM_GSTN()%></td>
<td><%=a.getM_PAN()%></td>
<td><%=a.getPassword()%></td>
<td><%=a.getPhno()%></td>
<td><%=a.getM_name()%></td>
<td><a href="deletebyidmechant?id=<%=a.getM_id()%>">REMOVE</a></td>
</tr>
<% } } %>


</body>
</html>