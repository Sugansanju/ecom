<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="reg"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<reg:form action="register"  method="POST">
User Name:<reg:input type="text" path="name" /><br>
Email Address:<reg:input type="mail" path="email" /><br>
Password:<reg:password path="password"/><br>
Contact:<reg:input type="cont" path="contact" /><br>
Address:<reg:input type="address" path="address" /><br>
<input type="submit" name="butSubmit" value="Register" />
</reg:form>

</body>
</html>	