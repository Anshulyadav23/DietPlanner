<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="right">
<form:form action="Logout" method="post" modelAttribute="dietPlan">
<input type="Submit" value="Logout"/>
</form:form>
</div>
<table align="center" border="1"><tr>
<td><b>BreakFast</b></td></tr>
<tr><td></td></tr>
<tr><td>
<c:forEach var="items" items="${breakfast }">  
   <c:out value="${items.meal}"/><p>  
</c:forEach></td></tr>
<tr><td></td></tr>
<tr><td><b>Lunch</b></td></tr>
<tr><td></td></tr>
<tr><td>
<c:forEach var="items" items="${lunch }">  
   <c:out value="${items.meal}"/><p>  
</c:forEach></td></tr>
<tr><td></td></tr> 
<tr><td><b>Dinner</b></td></tr>
<tr><td></td></tr>
<tr><td>
<c:forEach var="items" items="${dinner }">  
   <c:out value="${items.meal}"/><p>  
</c:forEach></td></tr>
<tr><td>
<c:forEach var="items" items="${snacklist }"></td></tr>
<tr><td>
Snacks</td></tr>
<tr><td>
      <c:forEach var="item" items="${items }">  
        <c:out value="${item.meal}"/><p> 
      </c:forEach> </td>
</c:forEach>  
</tr>

</table>

</body>
</html>