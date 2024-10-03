<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<%
	// Retrieve the session object
	HttpSession currsession1 = request.getSession(false);

	// Check if the session is not null and the username attribute is set
	if (currsession1 != null) {
		currsession1.invalidate();
	}
	response.sendRedirect("index.html");
	%>


</body>
</html>