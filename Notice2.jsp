<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Xa'vi'er
  Date: 2023/4/25
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
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
        <table border="1">
            <tr>
                <th>NoticeID</th>
                <th>标题</th>
                <th>发布人</th>
            </tr>
            <c:forEach items="${noticeMap}" var="n">
                <tr>
                    <td align="center">${n.nid}</td>
                    <td align="center"><a href="findNotice2?nid=${n.nid}" >${n.title}</a></td>
                    <td align="center">${n.admin.aname}</td>

                </tr>
            </c:forEach>

        </table>
    </div>


</body>
</html>
