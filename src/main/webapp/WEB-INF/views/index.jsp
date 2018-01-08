<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page errorPage="/WEB-INF/views/Error.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
        <h1 style="color: red">Healthy Meal Diet Planner </h1>
        ${error}
        <form:form action="validate" method="post" modelAttribute="credential">
      <fieldset>  <table>
           
            <tr>
                <td>UserID:</td>
                <td><form:input path="LoginId" /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><form:input type="password" path="LoginPassword" /></td>
            </tr>
            <tr>
           		
                <td ><input type="submit" name="signin" value="Sign In"/></td>
                <td ><input type="submit" name="signup" value="Sign Up"/></td>
             </tr>
        </table>
        </fieldset></form:form>
    </div>
</body>
</html>