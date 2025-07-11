<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: iakon
  Date: 15.11.2024
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Dear Employee, Please, enter your details</h2>

<br>
<br>



<%--@elvariable id="employee" type="com.artemyakkonen.spring.mvc.Employee"--%>
<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name" />
    <form:errors path="name" />
    <br>
    <br>
    Surname <form:input path="surname" />
    <form:errors path="surname" />
    <br>
    <br>
    Salary <form:input path="salary" />
    <form:errors path="salary" />
    <br>
    <br>
    Department <form:select path="department">
    <form:options items="${employee.departments}" />
    </form:select>
    <br>
    <br>
    Which car do you want?
    <br>
    <form:radiobuttons path="carBrand"  items="${employee.carBrands}"/>
    <br>
    <br>
    Foreign language(s)
    <form:checkboxes path="languages" items="${employee.languageList}" />
    <br>
    <br>
    Phone number <form:input path="phoneNumber" />
    <form:errors path="phoneNumber" />
    <br>
    <br>
    Email <form:input path="email" />
    <form:errors path="email" />
    <br>
    <br>

    <input type="submit" value="OK">
</form:form>

</body>
</html>
