<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>学生不存在</title>
</head>
<body>
学生已在课表中，请误重复添加
<h2><a href= "${pageContext.request.contextPath}/getCourseStudent?ccid=${ccid}&tid=${tid}" >返回</a></h2>
</body>
</html>