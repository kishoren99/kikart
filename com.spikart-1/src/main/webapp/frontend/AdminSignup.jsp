<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
*{
padding: 0px;
margin: 0px;
box-sizing: border-box;
}
body {
font-family: Arial, sans-serif;
 animation: anim 5s linear infinite;
    background-image: url("/asignupbg.jpg");
    background-repeat: no-repeat;
    background-size: cover;
} 

h2{
color: white;
font-family: monospace;
font-size: 35px;
position: relative;
top: 80px;
left: 43%;
background: linear-gradient(to bottom left, yellow 20%,purple 50%,orange,white);
   color: transparent;
   background-clip:text; 
}
form{
position: relative;
top: 100px;
left: 42%;
}
label{
color: white;
padding: 20px,0px;
}
input{

padding:10px 30px;
    background: transparent;
    border: none;
    outline: none;
    border: 2px solid rgba(255,255, 255, .2);
    border-radius: 40px;
    font-size: 16px;
    color: #fff;
    position: relative;
    left: -15px;
}

#submit{
padding: 10px 30px;
 position: relative;
  left: 50px;
}

#submit:hover{
color: black;
background: white;
text-decoration: underline;
cursor: pointer;
}

nav{
height: 100px;
widows: 100vh;
box-shadow: 0px 0px 40px black;
display: flex;
justify-content: space-around;
align-items: center;
}
a{
color: white;
background:purple;
padding: 20px 25px;
border-radius: 45%;
box-shadow: 0px 0px 40px black;
text-decoration:none;
background: transparent;
}
a:hover{
text-decoration: underline;
background: white;
color: black;
text-transform: uppercase;
cursor: pointer;
background: linear-gradient(to bottom left, green 20%,maroon 50%,aqua);
   color: transparent;
   background-clip:text; 
}

.logo{
position: relative;
left: -50px;
}

.a1{
position: relative;
left: 150px;
}

.a2{
position: relative;
left: 60px;
}
.ar{
font-family:cursive;
color: white;
padding: 10px 100px;
font-size: 50px;
position: relative;
left: 80px;
text-shadow: 0px 0px 100px aqua;
background: linear-gradient(to bottom left, yellow 20%,purple 50%,orange,white);
color: transparent;
background-clip:text; 
}
</style>
</head>
<body>
<nav>
<div class="logo"><img  height="70px" width="110px" alt=""  src="/adminlogo.png"></div>
<div class="ar">Admin Registration</div>
<div class="a1"><a href="/al">Admin Login</a></div>
<div class="a2"> <a href="/#">Admin Logout</a>
</div>
</nav>
    <h2>Signup Form</h2>
    <form name="signupForm" action="register" method="post"   onsubmit="return validateForm()">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br><br>
        <label for="email">Email:</label><br>
        <input type="text" id="email" name="email"><br><br>
        <label for="phone">Phone Number:</label><br>
        <input type="text" id="phone" name="phone"><br><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br><br>
        <input type="submit" value="Submit" id="submit">
    </form>
</body>


<script type="text/javascript">
        function validateForm() {
            var name = document.forms["signupForm"]["name"].value;
            var email = document.forms["signupForm"]["email"].value;
            var phone = document.forms["signupForm"]["phone"].value;
            var password = document.forms["signupForm"]["password"].value;

            if (name == "") {
                alert("Name must be filled out");
                return false;
            }
            if (email == "") {
                alert("Email must be filled out");
                return false;
            }
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address");
                return false;
            }
            if (phone == "") {
                alert("Phone number must be filled out");
                return false;
            }
            var phonePattern = /^[0-9]{10}$/;
            if (!phonePattern.test(phone)) {
                alert("Please enter a valid 10-digit phone number");
                return false;
            }
            if (password == "") {
                alert("Password must be filled out");
                return false;
            }
            if (password.length < 6) {
                alert("Password must be at least 6 characters long");
                return false;
            }
            return true;
        }
    </script>
</html>