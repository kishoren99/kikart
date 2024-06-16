 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Add Products</h2>
<form action="/add-product" method="post" enctype="multipart/form-data">

<label for="name">product_name</label><br>
<input type="text" id="name" name="product_name" required="required"><br>

<label for="price">product_price</label><br>
<input type="number" id="price" name="price" min="0" step="0.01" required="required"><br>

<label for="quantity">Quantity</label><br>
<input type="number" id="quantity" name="quantity" min="0" required="required"><br>

<label for="image">Image</label><br>
<input type="file" id="image" name="image" accept="image/*" required="required"><br>

<label for="description">Description</label><br>
<textarea    id="description"  name="description" rows="4" cols="50" required="required"></textarea><br>
<input type="submit" value="submit">

</form>
</body>
</html>