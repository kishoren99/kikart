<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List"%>
     <%@page import="com.spikart1.AdminDto.ProductDto"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%	List<ProductDto> l=(List<ProductDto>)request.getAttribute("data") ;%>
<table border="">
<tr>
<th>Id</th>
<th>Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Image</th>
<th>Description</th>
<th>to delete</th>
<th>to update</th>
</tr>
<% for(ProductDto a:l) { %>
<tr>
<td><%=a.getProduct_id() %></td>
<td><%=a.getProduct_name() %></td>
<td><%=a.getPrice() %></td>
<td><%=a.getQuantity() %></td>
<td><img height="100px" width="70px" src="data:image/jpeg;base64,<%=a.getImageEncryptFormate() %>"></td>
<td><%=a.getDescription()%></td>
<td><a href="productdid?pk=<%= a.getProduct_id() %>">Delete</a></td>
<td><a href="updateproduct1?pk=<%= a.getProduct_id() %>">update</a></td>
</tr>    
<%} %>
</table>
</body>
</html>