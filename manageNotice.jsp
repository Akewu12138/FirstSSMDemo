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

<div id="bigBox">
    <h1>发布公告</h1>
    <div class="inputBox">
        <form action="updateNotice" method="post" items="${notice}">

            <div class="inputText">
                <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                <label>
                    <input type="text" placeholder="标题" name="title" value="${notice.title}" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/>
                </label>
            </div><br><br>
            <div class="inputText">
                <i class="fa fa-key" style="color: whitesmoke;"></i>
                <label>
                    <textarea cols="25" rows="5" placeholder="内容" name="content">${notice.content}</textarea>
                </label>
            </div><br><br>
            <div class="inputText">
                <i class="fa fa-key" style="color: whitesmoke;"></i>
                <label>
                    <input type="text" placeholder="公告ID" name="nid" value="${notice.nid}" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/>
                </label>
            </div><br><br>
            <div class="inputText">
                <i class="fa fa-key" style="color: whitesmoke;"></i>
                <label>
                    <p placeholder="发布人" >${notice.teacher.tname}</p>
                </label>
            </div>

            <input type="submit" class="inputButton" value="修改" /><br><br>
        </form>
    </div>
</div>

</body>
</html>
