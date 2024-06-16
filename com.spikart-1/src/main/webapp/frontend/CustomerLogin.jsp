<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>${pass}</h2>
<h2>${loginid}</h2>
<h2>${fail}</h2>
<form name="Signupform" action="customerLogin" method="post">
<label for="id">ID:</label><br>
<input type="number" id="id" name="id"><br>
<label for="passowrd">passowrd:</label><br>
<input type="password" id="passowrd" name="passowrd"><br>
<button>SUBMIT</button>
</form>
</body>
</html>