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
        <h2>教师列表</h2>
        <h3>添加教师</h3><br>
    <form method="post" action="adminteaMessageAdd" >
        <table width="400" align="center">
            <tr>
            	<td width="150px">账&nbsp;&nbsp;号：</td>
            	<td><input type="text"  name="id" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" /><br></td>
            </tr>
            <tr>
                <td width="150px">请输入教师姓名：</td>
                <td><input type="text" name="tname"  onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
			<tr>
            <td width="150px">请输入教师所属学院：</td>
                        <td>
           		<select  name="college" >
           			<option value="0" >计算机学院</option>
           			<option value="1">数理与土木工程学院</option>
           			<option value="2">设计与艺术学院</option>
           			<option value="3">信息学院</option>
           			<option value="4">继续教育学院</option>
           			<option value="5">商学院</option>
           			<option value="7">航空学院</option>
           		</select>
           	</td>
            </tr>
            <tr>
                <td width="150px">请输入教师密码：</td>
                <td><input type="text" name="password" /><br></td>
            </tr>
            <tr>
           		<td width="150px">请输入教师性别：</td>
           		<td>
           		<select  name="tsex" >
           			<option value="0" >男</option>
           			<option value="1">女</option>
           		</select>
           		</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <input type="submit" name="Submit" value="添加"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="Reset" value="取消"/><p>
                </td>
            </tr>
        </table>
    </form>
        <h3>查询教师</h3>
     <form method="post" action="adminteaMessagesSelect">
    <table width="400" align="center">
           <tr>
            	<td width="150px">账&nbsp;&nbsp;号：</td>
            	<td><input type="text"  name="tid" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" /><br></td>
            </tr>
            <tr>
                <td width="150px">请输入教师姓名：</td>
                <td><input type="text" name="tname" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
			<tr>
            <td width="150px">请输入教师所属学院：</td>
                        <td>
           		<select  name="college" >
           			<option value="0" > </option>
           			<option value="1">数理与土木工程学院</option>
           			<option value="2">设计与艺术学院</option>
           			<option value="3">信息学院</option>
           			<option value="4">继续教育学院</option>
           			<option value="5">商学院</option>
           			<option value="6">航空学院</option>
           			<option value="7">计算机学院</option>
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
                <th>教师编号</th>
                <th>姓名</th>
                <th>学院</th>
                <th>密码</th>
                <th>修改教师信息</th>
                <th>删除教师信息</th>
            </tr>
            <c:forEach items="${teacherMap}" var="t">
                <tr>
                    <td align="center">${t.id}</td>
                    <td align="center">${t.tname}</td>
                    <td align="center">${t.college}</td>
                    <td align="center">${t.password}</td>
                    <td align="center"><a href="goadminTeaMeUpdate?tid=${t.id}">修改</a></td>
                    <td align="center"><a href="deleteTeacher?tid=${t.id}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>


</body>
</html>
