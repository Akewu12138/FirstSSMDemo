<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程列表</title>
</head>
<body>
<div align="center">
<h2>课程列表</h2>
<table border="1">
<tr>
	<th>开课班号</th>
	<th>课程名称</th>
	<th>教师名称</th>
	<th>学分</th>
	<th>成绩</th>
</tr>



<c:forEach items="${xuankes}" var="x">
	<tr>
		<td align="center">${x.courseclass.ccid }</td>
		<td align="center">${x.courseclass.course.cname }</td>
		<td align="center">${x.courseclass.teacher.tname }</td>
		<td align="center">${x.courseclass.course.credit }</td>
		<td align="center">${x.grade }</td>
	</tr>
</c:forEach>
</table>
</div>
</body>
</html>