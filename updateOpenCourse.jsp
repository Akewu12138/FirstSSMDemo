<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

</head>
<body>
<div style="margin-left: 37%">
    ${NullErr}
    <form action="updateCourse" >
        课程号:<input type="text" value="${course.cid}" name="cid" disabled></br>
        课程名:<input type="text" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" value="${course.cname}" name="cname">${cnameErr} </br>
        学分:&nbsp<input type="text" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" value="${course.credit}" name="credit" onkeyup="value=value.replace(/[^\d]/g,'')"></br>
        学时:&nbsp<input type="text" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" value="${course.period}" name="period" onkeyup="value=value.replace(/[^\d]/g,'')"></br>
        课程类型:<input type="radio" name="coursetype" value="专业选修课" checked>专业选修课
        <input type="radio" name="coursetype" value="专业必修课">专业必修课
        <input type="radio" name="coursetype" value="通选课">通选课</br>
        考核方式:<input type="radio" name="examtype"  value="考试" checked>考试
        <input type="radio" name="examtype" value="审查">审查</br>
        <input type="submit" value="确认">
    </form>
</div>
</body>
</html>