<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
    <div align="center">
        <h1>Welcome ${username}</h1>
        <form:form action="plandiet" method="post" modelAttribute="credential">
        <table>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Plan A Diet"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Submit"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>