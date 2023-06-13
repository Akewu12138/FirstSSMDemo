<%--
  Created by IntelliJ IDEA.
  User: Xa'vi'er
  Date: 2023/4/25
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>社团信息管理</title>
    <link rel="stylesheet" href="css/child.css" type="text/css">
</head>
<body>

<div>
	<c:if test="${welcome==0}">
    <h1>欢迎使用选课系统！</h1>
    <h2>您现在登录的是管理员端</h2>
    </c:if>
    <c:if test="${welcome==1}">
    <h1>欢迎使用选课系统！</h1>
    <h2>您现在登录的是学生端</h2>
    </c:if>
    <c:if test="${welcome==2}">
    <h1>欢迎使用选课系统！</h1>
    <h2>您现在登录的是教师端</h2>
    </c:if>
</div>


</body>
</html>
