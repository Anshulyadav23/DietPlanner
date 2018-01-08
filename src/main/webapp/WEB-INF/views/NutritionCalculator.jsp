<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NutritionCalculator</title>
</head>
<body><br><br>
<h1 align="center">Plan A Diet</h1>
        
<form:form action="NutritionCalculator" method="post" modelAttribute="dietPlan"><fieldset>
<form:input type="hidden" path="UserID" />
<table  cellspacing="6">
<tr>
<td align="right">Current diet type</td>
<td></td>
<td><form:input type="text" path="MealType" /></td>
</tr>
<tr><td align="right">I want to</td>
<td></td>
<td><form:radiobutton path="Reason" value="LoseWeight"/>Lose Weight</td>
<td><form:radiobutton path="Reason" value="MaintainHealth"/>Maintain Health</td>
<td><form:radiobutton path="Reason" value="Gainweight"/>Gain weight</td>
</tr>

<tr><td align="right">I Am</td>
<td></td>
<td><form:radiobutton path="Gender" value="Male"/>Male</td>
<td><form:radiobutton path="Gender" value="Female"/>Female</td>
</tr>
<tr>
<td align="right">Height</td>
<td></td>
<td><form:input type="text" path="HeightFeet"/>ft</td>
<td><form:input type="text" path="HeightInch"/>in</td>
</tr>
<tr>
<td align="right">Weight</td>
<td></td>
<td><form:input type="text" path="Weight"/>lbs</td>
</tr>
<tr>
<td align="right">Age</td>
<td></td>
<td><form:input type="text" path="Age"/>Yr</td>
</tr>
<tr><td align="right">Body Fat</td>
<td></td>
<td><form:radiobutton path="BodyFat" value="low"/>Low</td>
<td><form:radiobutton path="BodyFat" value="medium"/>Medium</td>
<td><form:radiobutton path="BodyFat" value="high"/>High</td>
</tr>
<tr>
<td align="right">Activity Level</td>
<td></td>
<td><form:select path="Activity">
                <form:option value="-" label="Select Activity Level"/>
                <form:option value="Sedentary" label="Sedentary"/>
                <form:option value="Light Active" label="Light Active"/>
                <form:option value="Moderate Active" label="Moderate Active"/>
                <form:option value="Very Active" label="Very Active"/>
                <form:option value="Extremely Active" label="Extremely Active"/>
            </form:select>
</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td><input type="submit" name="Generate" value="Calculate"></td>
</tr>
</table>

</fieldset>
<br><br>
<center>
<fieldset>
<table>
<tr>
<td>Suggested Calories</td>
<td></td>
<td>${calories}<form:input type="hidden" path="CaloriesPerDay"/></td>
</tr>
<tr>
<td>Carbs</td>
<td></td>
<td>${carbs}<form:input type="hidden" path="Carbs"/>
<form:input type="hidden" path="mincarbs"/></td>
</tr>
<tr>
<td>Fat</td>
<td></td>
<td>${fat}<form:input type="hidden" path="Fat"/>
<form:input type="hidden" path="minfat"/></td>
</tr>
<tr>
<td>Protien</td>
<td></td>
<td>${protein}<form:input type="hidden" path="Protien"/>
<form:input type="hidden" path="minprotein"/></td>
</tr>
<tr>
<td></td>
<td></td>
<td>
<input type="submit" name="UseSetting" value="Use These Settings">
</td></tr>
</table>
</fieldset>
</center>

</form:form>

</body>
</html>