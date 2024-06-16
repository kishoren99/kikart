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
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;    
        background-image: url("/msignup.jpg");
        background-repeat: no-repeat;
       background-size: cover;
        
    }
    .navbar {
        background-color: transparent;
        overflow: hidden;
        margin-bottom: 20px;
    }
    .navbar a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }
    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }
    .container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 8px;
        background: transparent;
        border-radius: 40%;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    .form-group {
        margin-bottom: 15px;
        background: transparent;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
        color: white;
    }
    .form-group input {
        width: 100%;
        padding: 10px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        background: transparent;
    }
    .form-group input:focus {
        border-color: #5cb85c;
        outline: none;
    }
    .form-group button {
        width: 100%;
        padding: 10px;
        background-color: #5cb85c;
        border: none;
        color: white;
        font-size: 16px;
        cursor: pointer;
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }
    .form-group button:hover {
        background-color: #4cae4c;
    }
</style>
</head>
<body>
    <div class="navbar">
        <a href="#home">Home</a>
        <a href="#services">Services</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
    </div>
    <div class="container">
        <h2>Merchant Signup Form</h2>
        <form action="/submit_form" method="POST">
            <div class="form-group">
                <label for="m_name">Name</label>
                <input type="text" id="m_name" name="m_name" required>
            </div>
            <div class="form-group">
                <label for="m_company_address">Company Address</label>
                <input type="text" id="m_company_address" name="m_company_address" required>
            </div>
            <div class="form-group">
                <label for="m_GSTN">GSTN</label>
                <input type="text" id="m_GSTN" name="m_GSTN" required>
            </div>
            <div class="form-group">
                <label for="m_PAN">PAN</label>
                <input type="text" id="m_PAN" name="m_PAN" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phno">Phone Number</label>
                <input type="tel" id="phno" name="phno" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <button type="submit">Signup</button>
            </div>
        </form>
    </div>
</body>
</body>
</html>