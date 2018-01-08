<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
    <div align="center">
        <h1>Registration</h1>
        <form:form action="register" method="post" modelAttribute="credential">
        <table>
            <tr>
                <td>Name:</td>
                <td><form:input path="UserName" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="Address" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="EmailID" /></td>
            </tr>
            <tr>
                <td>Contact Number:</td>
                <td><form:input path="ContactNumber" /></td>
            </tr>
            <tr>
                <td>User ID:</td>
                <td><form:input path="LoginId" /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><form:input type="password" path="LoginPassword" /></td>
            </tr>
           
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Submit"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>