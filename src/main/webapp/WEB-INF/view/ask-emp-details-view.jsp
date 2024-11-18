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
    <br>
    <br>
    Surname <form:input path="surname" />
    <br>
    <br>
    Salary <form:input path="salary" />
    <br>
    <br>
    <input type="submit" value="OK">
</form:form>

</body>
</html>
