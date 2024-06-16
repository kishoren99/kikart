<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    animation: anim 5s linear infinite;
    background-image: url("/adminlogin.jpg");
	    background-repeat: no-repeat;
	    background-size: cover;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
} 

.login {
    font-family: monospace;
    font-size: 30px;
    background: linear-gradient(to bottom left, yellow 20%, purple 50%, orange, white);
    color: transparent;
    background-clip: text; 
}

form {
    text-align: center;
    margin-top: 20px;
}

label {
    display: block;
    color: white;
    padding: 10px 0px;
}

input[type="text"], input[type="password"] {
    padding: 10px 20px;
    background: transparent;
    border: none;
    outline: none;
    border: 2px solid rgba(255, 255, 255, .2);
    border-radius: 40px;
    font-size: 16px;
    color: #fff;
    width: 80%;
    margin: 10px auto;
    display: block;
    transition: border-color 0.3s, box-shadow 0.3s;
}

input[type="text"]:focus, input[type="password"]:focus {
    border-color: yellow;
    box-shadow: 0 0 10px yellow;
}

input[type="submit"] {
    padding: 10px 35px;
    background: white;
    color: black;
    border: none;
    border-radius: 40px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 20px;
    transition: background 0.3s, color 0.3s;
}

input[type="submit"]:hover {
    background: #ddd;
}

img {
    display: block;
    margin: 20px auto;
    border-radius: 50%; 
}

div {
    max-width: 400px;
    padding: 20px;
    background: rgba(0, 0, 0, 0.7);
    border-radius: 10px;
    box-shadow: 0px 0px 40px white;
}

nav {
    width: 100%;
    height: 100px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
    position: absolute;
    top: 0;
}

.a2 {
    background: transparent;
}

.a2 a {
    background: white;
    padding: 10px 20px;
    border-radius: 10px;
    text-decoration: none;
    color: black;
    transition: background 0.3s, color 0.3s;
}

.a2 a:hover {
    background: black;
    color: white;
    text-decoration: underline;
}

.fail {
    color: white;
    font-family: monospace;
    font-size: 15px;
    text-align: center;
    background: linear-gradient(to bottom left, yellow 20%, purple 50%, orange, white);
    color: transparent;
    background-clip: text; 
    margin-top: 20px;
}

@keyframes anim {
    100% {
        filter: hue-rotate(360deg);
    }
}
</style>
</head>
<body>
<nav>
    <h2 class="login">Login Form</h2>
    <div class="a2">
        <a href="/#">Admin Logout</a>
    </div>
</nav>
<div>
    <img height="130px" width="150px" alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtRYt3HsWn85ZxHnwRe-WhxT9hfXRnxSJlUmMZXfZ-ZRUiN_xMJY4B225En5SEA9L56dA&usqp=CAU">

    <form name="signupForm" action="adminlogin" method="post">
        <label for="email">Email:</label>
        <input type="text" id="email" name="email">
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
        
        <input type="submit" value="Submit" class="submit">
        
        <h2 class="fail">${pass}</h2>
        <h2 class="fail">${fail}</h2>
    </form>
</div>
</body>
</html>