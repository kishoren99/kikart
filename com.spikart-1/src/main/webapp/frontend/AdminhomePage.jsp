<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
     <%@page import="com.spikart1.AdminDto.CustomerDto"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
    padding: 0px;
    margin: 0px;
    box-sizing: border-box;
}
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    background-image: url("/adminhome.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
.nav {
    height: 80px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    color: white;
    padding: 0 20px;
}
.nav .logo {
    font-size: 24px;
    font-weight: bold;
}
.nav .toggle-button {
    background-color: #333;
    border: none;
    color: white;
    font-size: 24px;
    cursor: pointer;
}
.nav .toggle-button:hover {
    color: #ddd;
}
.navbar {
    display: none; /* Initially hidden */
    flex-direction: column;
    background-color: #444;
    width: 100%;
}
.navbar a {
    color: white;
    text-decoration: none;
    padding: 15px 20px;
    text-align: center;
    background-color: #444;
    border-bottom: 1px solid #555;
}
.navbar a:hover {
    background-color: #555;
}
h1 {
    text-align: center;
    padding: 20px 0;
    background-color: #333;
    color: white;
    margin: 0;
}
.content {
    padding: 20px;
}
</style>

<script>
function toggleNavbar() {
    var navbar = document.querySelector('.navbar');
    if (navbar.style.display === "none" || navbar.style.display === "") {
        navbar.style.display = "flex";
    } else {
        navbar.style.display = "none";
    }
}
</script>

</head>
<body>

<nav class="nav">
    <div class="logo">Admin Home</div>
    <button class="toggle-button" onclick="toggleNavbar()">&#9776;</button>
</nav>
<h1>Welcome to SpiCart</h1>
<div class="navbar">
    <a href="/fallCustomer">Customer Details</a>
    <a href="/deleteAllCustomer">Remove Customers</a>
    <a href="/fallmerchant">Merchant Details</a>
    <a href="/deleteAllMerchant">Remove Merchants</a>
</div>
<div class="content">
    <p>This is the admin home page where you can manage customers and merchants.</p>
</div>

</body>
</html>