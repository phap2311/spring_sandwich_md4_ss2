<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/2/2024
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/sandwich/list" method="get">
    <input type="checkbox" name="item" value="lettuce">lettuce
    <input type="checkbox" name="item" value="Tomato">Tomato
    <input type="checkbox" name="item" value="Mustard">Mustard
    <input type="checkbox" name="item" value="Sprouts">Sprouts
    <button type="submit">save</button>

</form>
<h3 id="result">your choice</h3>
<c:forEach items="${condiments}" var="condiment">
    <div>${condiment}</div>
</c:forEach>
</body>
</html>
