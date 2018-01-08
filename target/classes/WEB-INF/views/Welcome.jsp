<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body><br><br>
<fieldset><center>
<h1>Welcome ${username}</h1>
<h2>Healthy Meal Diet Planner </h2></center>
<form:form action="GenerateDiet" method="post" modelAttribute="dietPlan"><center>

<form:input type="hidden" path="planID"/>
<form:input type="hidden" path="UserID" />
<form:input type="hidden" path="HeightInch"/>
<form:input type="hidden" path="HeightFeet"/>
<form:input type="hidden" path="Weight"/>
<form:input type="hidden" path="BodyFat"/>
<form:input type="hidden" path="Activity"/>
<form:input type="hidden" path="Gender"/>
<form:input type="hidden" path="Reason"/>
<form:input type="hidden" path="Protien"/>
<form:input type="hidden" path="Fat"/>
<form:input type="hidden" path="Carbs"/>
<form:input type="hidden" path="Age"/>
<form:input type="hidden" path="minprotein"/>
<form:input type="hidden" path="minfat"/>
<form:input type="hidden" path="mincarbs"/>
<table>
<tr>

<td>I want to eat</td>
<td><form:input type="text" path="CaloriesPerDay"/></td>
<td>Calories</td>
<td><form:select path="NumberOfMeals">
<form:option value="3" label="3"/>
<form:option value="4" label="4"/>
<form:option value="5" label="5"/>
<form:option value="6" label="6"/>
</form:select></td>


<td>Meals.</td>
<td></td>
<td>I like to eat</td>
<td><form:select path="MealType">
<form:option value="Anything" label="Anything"/>
<form:option value="Paleo" label="Paleo"/>
<form:option value="Vegetarian" label="Vegetarian"/>
<form:option value="Vegan" label="Vegan"/>
<form:option value="atkins/Ketogenic" label="atkins/Ketogenic"/>
<form:option value="Mediterranean" label="Mediterranean"/>

</form:select></td>
<td><input type="submit" name="Generate" value="Generate"></td>
</tr>
<tr><td><input type="submit" name="NotSure" value="Calculate Calories"></td>
<td><input type="submit" name="UpdateDetails" value="Update Details"></td>
</tr>
</table>

</center>
</form:form>

</fieldset><br><br>
<fieldset><legend><b>Meal Plan</b></legend><table align="center">

<tr><td></td></tr>

<c:forEach var="items" items="${dietchart }">
<tr>
  <td><c:out value="${items.mealcategory}"/><p></td>  
   <td><c:out value="${items.meal}"/><p></td> 
</tr>
</c:forEach>  


</table>
</fieldset>


</body>
</html>