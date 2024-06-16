<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.spikart1.AdminDto.ProductDto"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Update Product</h2>

<form action="/updateproduct" method="post" enctype="multipart/form-data">
 <label for="name">Id:</label><br>
  <input type="number" id="id" name="product_id" value="${pk}"  required><br>
  
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="product_name" required><br>
  
  <label for="price">Price:</label><br>
  <input type="number" id="price" name="price" min="0" step="0.01" required><br>
  
  <label for="quantity">Quantity:</label><br>
  <input type="number" id="quantity" name="quantity" min="0" required><br>
  
  <label for="image">Image:</label><br>
  <input type="file" id="image" name="image" accept="image/*" required><br>
  
  <label for="description">Description:</label><br>
  <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>
  
  <input type="submit" value="Submit">
</form>

</body>
</html>