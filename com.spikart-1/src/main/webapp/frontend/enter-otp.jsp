<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        
    background-image: url("https://img.freepik.com/free-vector/cyber-data-security-online-concept-illustration-internet-security-information-privacy-protection_1150-37328.jpg?size=338&ext=jpg&ga=GA1.1.44546679.1716768000&semt=ais_user");
    background-repeat: no-repeat;
    background-size: cover;
        
    }
    nav {
        background-color: #007BFF;
        padding: 10px 20px;
    }
    nav ul {
        list-style: none;
        padding: 0;
        margin: 0;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    nav ul li {
        margin: 0 10px;
    }
    nav ul li a {
        color: white;
        text-decoration: none;
        font-weight: bold;
    }
    nav ul li a:hover {
        text-decoration: underline;
    }
    h1 {
        color: #333;
        text-align: center;
    }
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
        margin: 50px auto;
        background: transparent;
    }
    input {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        outline: none;
    }
    button {
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        background-color: white;
        color: blue;
        cursor: pointer;
        margin-top: 10px;
    }
    button:hover {
        background-color: blue;
        color: #ffff;
    }
</style>
</head>
<body>
<nav>
    <ul>
        <li><a href="#"><img src="logo.png" alt="Logo"></a></li>
        <li><a href="cl">Login</a></li>
        <li><a href="#">Logout</a></li>
        
    </ul>
</nav>
<h1>${pass}</h1>
<form action="/verify-otp" method="post">
    <h1>${fail}</h1>
    <input type="hidden" name="id" value="${id}">
    <input type="number" name="otp" placeholder="Enter the OTP">
    <button type="submit">SUBMIT</button>
    <button type="button">Cancel</button>
</form>
</body>
</html>