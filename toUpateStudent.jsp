<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>修改课程成绩</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
</head>
<body>
<div id="add" class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改课程成绩</small>
                </h1>
            </div>
        </div>
    </div>
    <br><br>
    <div>
        <form  class="form-horizontal" role="form" action="${pageContext.request.contextPath}/updateGrade" method="post">
            开课班号：
            <label class="col-sm-10">
                <input onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" type="text" class="form-control" name="ccid" readonly="readonly" value="${StudentList.courseclass.ccid}">
            </label>
            <br><br>
            学生编号：
            <label class="col-sm-10">
                <input onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" class="form-control" type="text" name="sid" value="${StudentList.student.id}" readonly="readonly">
            </label>
            <br><br>
            学生名称：
            <label class="col-sm-10">
                <input onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" class="form-control" type="text" name="sname" value="${StudentList.student.sname}" readonly="readonly">
            </label>
            <br><br>
            成绩：
            <label class="col-sm-10">
                <input onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" class="form-control" type="text" name="grade" value="${StudentList.grade}">
            </label>
            <br><br>

            <label class="col-sm-10">
             <input class="form-control" type="hidden" name="tid"  value="${tid}">
            </label>

            <div>
                <input class="col-sm-11" type="submit" value="修改">
            </div>

        </form>
    </div>
    
    <div>
        <form  class="form-horizontal" role="form" action="${pageContext.request.contextPath}/getCourseStudent?ccid=${StudentList.courseclass.ccid}&tid=${tid}" method="post">
            <div>
                <input class="col-sm-11" type="submit" value="返回">
            </div>

        </form>
	</div>
	
</div>

</body>
</html>