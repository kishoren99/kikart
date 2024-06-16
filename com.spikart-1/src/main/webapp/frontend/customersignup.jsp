<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    background-image: url("https://cdn.shopify.com/s/files/1/0070/7032/files/business_20to_20consumer.png?v=1697741444");
    background-repeat: no-repeat;
    background-size: cover;
}
h1 {
    color: #333;
    text-align: center;
    margin-top: 20px;
}
form {
    max-width: 400px;
    margin: 40px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background: transparent;
}
input {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 40px;
    background: transparent;
}
button {
    padding: 10px 20px;
    margin: 10px 5px;
    border: none;
    border-radius: 4px;
    background-color: #007BFF;
    color: white;
    cursor: pointer;
}
button:hover {
    background-color: #0056b3;
}
nav {
    background-color: #333;
    padding: 10px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
nav a {
    color: white;
    text-decoration: none;
    padding: 10px;
    border-radius: 4px;
    transition: background-color 0.3s;
}
nav a:hover {
    background-color: #575757;
}
</style>
</head>
<body>
<nav>
    <div class="logo">
        <a href="#">Logo</a>
    </div>
    <div>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="/cl">Customer Login</a>
        <a href="#">Contact</a>
    </div>
</nav>
<h1>Customer Signup Page</h1>
<h1>${no}</h1>
<form action="customerSignup" method="post">
    <input type="text" name="name" placeholder="Enter name" required="required"><br>
    <input type="email" name="email" placeholder="Enter email" required="required"><br>
    <input type="number" name="mobile" placeholder="Enter mobile" required="required"><br>
    <input type="password" name="passowrd" placeholder="Enter password" required="required"><br>
    <button type="submit">Create Account</button>
    <button type="button" onclick="window.location.href='index.jsp'">Cancel</button>
</form>
</body>
</html>