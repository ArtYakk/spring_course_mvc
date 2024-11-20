<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<jsp:useBean id="employee" scope="request" type="com.artemyakkonen.spring.mvc.Employee "/>
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

<h2>Dear Employee, you are welcome</h2>
<br>
<br>
<br>
<%--Your name: ${param.employeeName}--%>
Your name: ${employee.name}
<br>
<br>
Your surname: ${employee.surname}
<br>
<br>
Your salary: ${employee.salary}
<br>
<br>
Your department: ${employee.department}
<br>
<br>
Your car: ${employee.carBrand}
<br>
<br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
</ul>
<br>
<br>
Phone number: ${employee.phoneNumber}
<br>
<br>
Email: ${employee.email}
</body>
</html>
