<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Registration Page</h1>
		<form action="" method="post">
			<input type = "text" name="userName" placeholder="enter user name"/></br></br>
			<input type = "password" name="password" placeholder="enter user password"/></br></br>
			<input type = "text" name="contact" placeholder="enter user Contact"/></br></br>
			<input type = "text" name="address" placeholder="enter user Address"/></br></br>
			
			<input type="submit" name="register" value="Register User"/><a href =""> Go to HomePage</a>
		</form>
		
		<c:if test="${param.register!= null}">
			<c:choose>
				  <c:when test="${empty param.userName}">
				  	<h2>Please enter UserName</h2>
				  </c:when>
				  
				  <c:when test="${empty param.password}">
				  	<h2>Please enter Password</h2>
				  </c:when>
				  
				   <c:when test="${empty param.contact}">
				  	<h2>Please enter Contact Number</h2>
				  </c:when>
				  
				   <c:when test="${empty param.address}">
				  	<h2>Please enter Address</h2>
				  </c:when>
				  
				  <c:otherwise>
					<h2>Good to go</h2>
				  </c:otherwise>
			</c:choose>
		</c:if>
</body>
</html>