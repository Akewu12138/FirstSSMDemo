<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>新增课程</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
</head>
<body>
<div id="add" class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增学生</small>
                </h1>
            </div>
        </div>
    </div>
    <br><br>
    <div>
        <form  class="form-horizontal" role="form" action="${pageContext.request.contextPath}/addStudent" method="post">
            开课班号：
            <label class="col-sm-10">
                <input type="text" class="form-control" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" name="ccid" value="${ccid}" readonly="readonly">
            </label>
            <br><br>
            学生编号：
            <label class="col-sm-10">
                <input class="form-control" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" type="text" name="sid">
            </label>
            <br><br>
                
            <label class="col-sm-10">
             <input class="form-control" type="hidden" name="tid"  value="${tid}">
            </label>
            
            <div>
                <input class="col-sm-11" type="submit" value="添加">
            </div>

        </form>
    </div>

    <div>
        <form  class="form-horizontal" role="form" action="${pageContext.request.contextPath}/getCourseStudent?ccid=${ccid}&tid=${tid}" method="post">
            <div>
                <input class="col-sm-11" type="submit" value="返回">
            </div>

        </form>
	</div>
</div>
</body>
</html>