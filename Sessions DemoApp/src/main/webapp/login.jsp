<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style type="text/css">
button {
  
  padding: 5px 12px;
  text-align: center;
 
  font-size: 16px;
}

</style>
</head>
<body>

<form action="<%= request.getContextPath()%>/SiteController" method="post">
Username: <input type="text" name="username"><br/>

Password: <input type="password" name="password"><br/>
<input type="hidden" name="action" value="loginSubmit">

<button type="submit" value="submit">Submit</button>
</form>

</body>
</html>