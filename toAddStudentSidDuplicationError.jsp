<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生不存在</title>
</head>
<body>
学生不存在，请确认学生编号后重新添加
<h2><a href= "${pageContext.request.contextPath}/getCourseStudent?ccid=${ccid}&tid=${tid}"" >返回</a></h2>
</body>
</html>