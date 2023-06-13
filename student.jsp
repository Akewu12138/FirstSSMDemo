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
        <h2>学生列表</h2>
        <h3>添加学生</h3><br>
    <form method="post" action="adminstuMessageAdd">
        <table width="400" align="center">
            <tr>
            	<td width="150px">账&nbsp;&nbsp;号：</td>
            	<td><input type="text"  name="id" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
            <tr>
                <td width="150px">请输入学生姓名：</td>
                <td><input type="text" name="sname" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
            <tr>
           		<td width="150px">请输入学生性别：</td>
           		<td>
           		<select  name="sex" >
           			<option value="0">男</option>
           			<option value="1">女</option>
           		</select>
           		</td>
            </tr>
			<tr>
                <td width="150px">请输入学生电话号码：</td>
                <td><input type="text" name="phone" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" /><br></td>
            </tr>
            <tr>
                <td width="150px">请输入学生生日：</td>
                <td><input type="text" name="birthday" /><br></td>
            </tr>
<tr>
                <td width="150px">请输入学生密码：</td>
                <td><input type="text" name="password"><br></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <input type="submit" name="Submit" value="添加"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="Reset" value="重置"/><p>
                </td>
            </tr>
        </table>
    </form>
    <h3>查询学生</h3>
    <form method="post" action="adminstuMessagesSelect">
    <table width="400" align="center">
            <tr>
            	<td width="150px">账&nbsp;&nbsp;号：</td>
            	<td><input type="text"  name="sid"/><br></td>
            </tr>
            <tr>
                <td width="150px">请输入学生姓名：</td>
                <td><input type="text" name="sname"/><br></td>
            </tr>
            <tr>
           		<td width="150px">请输入学生性别：</td>
           		<td>
           		<select  name="sex" >
           			<option value="0"> </option>
           			<option value="1">男</option>
           			<option value="2">女</option>
           		</select>
           		</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <input type="submit" name="Submit" value="查询"/>
                </td>
            </tr>
        </table>
    </form>
        <table border="1" align="center">
            <tr>
                <th>学号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>电话号码</th>
                <th>生日</th>
                <th>修改学生信息</th>
                <th>删除学生信息</th>
            </tr>
            <c:forEach items="${studentMap}" var="s">
                <tr>
                    <td align="center">${s.id}</td>
                    <td align="center">${s.sname}</td>
                    <td align="center">${s.sex}</td>
                    <td align="center">${s.phone}</td>
                    <td align="center">${s.birthday}</td>
                    <td align="center"><a href="goadminStuMeUpdate?sid=${s.id}">修改</a></td>
                    <td align="center"><a href="deleteStudent?id=${s.id}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>


</body>
</html>
