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
    background-image: url("https://cdn.pixabay.com/photo/2017/03/13/17/26/ecommerce-2140603_1280.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}  

.nav {
    height: 80px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: fuchsia;
    background: transparent;
    box-shadow: 0px 0px 50px green;
}

.navbar {
    width: 200px; /* Adjust width for vertical alignment */
    display: flex;
    flex-direction: column; /* Align items vertically */
    align-items: center;
    background: transparent;
    display: none; /* Initially hidden */
    position: relative;
    top: 120px;
}
.navbar a {
    background: white;
    box-shadow: 0 0 40px yellow;
    border-radius: 35px;
    animation: anim 5s linear infinite;
    padding: 10px 20px;
    text-decoration: none;
    margin-bottom: 10px; /* Add space between links */
}

.navbar a:hover {
    background: black;
    color: black;
    text-decoration: underline;
    background: linear-gradient(to bottom left, yellow 20%, purple 50%, orange, blue);
    color: black;
    background-clip: text; 
    background: transparent;
}
@keyframes anim {
    100% {
        filter: hue-rotate(360deg);
    }
}
    
h1 {
    font-family: cursive;
    font-size: 40px;
    text-shadow: 0 0 40px black;
    padding: 10px;
     background: linear-gradient(to bottom left, yellow 20%, purple 50%, orange, blue);
    color: black;
    background-clip: text; 
    background: transparent;
}
    
.logo {
    position: relative;
    left: 5px;
    top: -20px;
    color:black;
    width: 80px;
    height: 60px;
    font-size: 42px;
    text-shadow: 0 0 40px blue;
    background: linear-gradient(to bottom left, yellow 20%, purple 50%, orange, blue);
    color: black;
    background-clip: text; 
    background: transparent;
} 

.toggle-button {
    background: transparent;
    border: 2px solid fuchsia;
    color: fuchsia;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 10px;
    margin-right: 80px;
    font-size: 16px;
    color: white;
    font-size: 20px;
        box-shadow: 0px 0px 50px green;
    
}

.toggle-button:hover {
    background: fuchsia;
    color: white;
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
<div class="logo"><img height="100px" width="130px" src="/spikart.png"></div>
<button class="toggle-button" onclick="toggleNavbar()">Toggle Menu</button>
<div class="navbar">
<a href="/as">Admin SignUp</a>
<a href="/al">Admin Login</a>
<a href="/cs">Customer SignUp</a>
<a href="/cl">Customer Login</a>
<a href="/ms">Merchant Signup</a>
<a href="/ml">Merchant login</a>
</div>
</nav>
<hr style="height: 20px; border: none;">
<marquee scrollamount="30" behavior="scroll"><h1>WELCOME LETS GET START YOUR JOURNY WITH US.. &nbsp; WELCOME LETS GET START YOUR JOURNY WITH US..</h1></marquee>
</body>
</html>