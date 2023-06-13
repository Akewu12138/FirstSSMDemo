<%--
  Created by IntelliJ IDEA.
  User: Xa'vi'er
  Date: 2023/4/25
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
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
        <h2>公告列表</h2>
        <div  items="${notice}">
            <h1 name="title">${notice.title}</h1><br><br>
            <p name="content">${notice.content}</p><br><br>
            <h2 id="tname">${notice.teacher.tname}</h2><br><br>
        </div>
    </div>

</body>
</html>
