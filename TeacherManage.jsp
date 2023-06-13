<%--
  Created by IntelliJ IDEA.
  User: kangl
  Date: 2023/5/4
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>老师的课程信息管理</title>
<!--     <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 -->
</head>
<body>
<div>
    <h4>教师课程信息列表</h4>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                	<p></p>
                    <h1>
                        <small>课程列表 —— 显示所有课程</small>
                    </h1>
                </div>
            </div>
        </div>
        
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>课程编号</th>
                        <th>开课班号</th>
                        <th>课程名字</th>
                        <th>学分</th>
                        <th>学时</th>
                        <th>课程容量</th>
                        <th>已选人数</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="course" items="${courseList}">
                        <tr>
                            <td>${course.courseclass.course.cid}</td>
                            <td>${course.courseclass.ccid}</td>
                            <td>${course.courseclass.course.cname}</td>
                            <td>${course.courseclass.course.credit}</td>
                            <td>${course.courseclass.course.period}</td>
                            <td>${course.courseclass.class_capacity}</td>
                            <td>${course.courseclass.number}</td>
                            <td>
                                 <a href="${pageContext.request.contextPath}/getCourseStudent?ccid=${course.courseclass.ccid}&tid=${tid}">查看</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
</script>
</body>
</html>
