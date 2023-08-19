<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberArea</title>
</head>
<body>
	hi!
	<%
String username = null, sessionID = null;
if (request.getSession().getAttribute("username") == null) {
	response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
} else {
	username = request.getSession().getAttribute("username").toString();
	sessionID = request.getSession().getId();
}

/*Cookie[] cookies =  request.getCookies();

if(cookies != null){
	for(Cookie c: cookies){
		if(c.getName().equals("username")){
	username = c.getValue();
		}
		if(c.getName().equals("JSESSIONID")){
	sessionID = c.getValue();
		}
	}
}

if (sessionID == null || username == null) {
	response.sendRedirect("login.jsp");
}*/
%>

	Username:
	<%=username%><br /> Current Session:
	<%=sessionID%><br />

	<form action="<%=request.getContextPath()%>/MemberAreaController"
		method="get">
		<input type="hidden" name="action" value="destroy"> <input
			type="submit" value="logout">

	</form>

</body>
</html>