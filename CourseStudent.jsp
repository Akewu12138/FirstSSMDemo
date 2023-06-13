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
    <title>课程信息管理</title>
   
</head>

<script type="text/javascript">
 
    function doDelete(id,ccid,tid) {
        /* 如果这里弹出的对话框，用户点击的是确定，就马上去请求。 
        如何知道用户点击的是确定。
        如何在js的方法中请求。 */
        var flag = confirm("是否确定删除学生?"+id);
        if(flag){
            //表明点了确定。 访问servlet。 在当前标签页上打开 超链接，
            //window.location.href="DeleteServlet?sid="+sid;
          	location.href="deleteCourseStudent?sid="+id+"&ccid="+ccid+"&tid="+tid;
        }
    }  
    


</script>

<body>
<div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                	<p></p>
                    <h1>
                        <small>课程学生列表 —— 显示所有学生</small>
                    </h1>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-4 column">
            <c:if test="${flag1==0}">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/toAddStudent?ccid=${ccid}&tid=${tid}">新增</a>
            </c:if>
            	<a class="btn btn-primary" href="${pageContext.request.contextPath}//excel?ccid=${ccid}&tid=${tid}">导出名单</a>
            </div>
           
        </div>
    
	<div id="hidden_file_div" >

 		<font size="3">上传成绩</font>
       <form id="form_excel" name="form_excel"  action="${pageContext.request.contextPath}/DoExcel?ccid=${ccid}&tid=${tid}" method="post" enctype="multipart/form-data">
		 <input type="file" id="file_excel" name="file_excel" />
    	 <input type="submit">
    	 </form>
	</div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped" border="1">
                    <thead>
                    <tr>
                    	<th>开课班号</th>
                        <th>学生编号</th>
                        <th>学生名字</th>
                        <th>成绩</th>
                        <th>操作</th> 
                    </tr>
                    </thead>
                    
            	<label class="col-sm-10">
             	<input class="form-control" type="hidden" name="tid"  value="${tid}">
             	<input class="form-control" type="hidden" name="ccid"  value="${ccid}">
            	</label>
            
                    <tbody>
                    <c:forEach var="studentlist" items="${studentList}">
                        <tr>
                        	<td>${studentlist.courseclass.ccid}</td>
                            <td>${studentlist.student.id}</td>
                            <td>${studentlist.student.sname}</td>
                            <td>${studentlist.grade}</td>
                            <td>
                           		<a href= "${pageContext.request.contextPath}/toUpateStudent?ccid=${studentlist.courseclass.ccid}&sid=${studentlist.student.id}&tid=${tid}" >更改</a>        
                                	||
                                <c:if test="${flag1==0}">
                           		<button type="button" onclick="doDelete('${studentlist.student.id}','${studentlist.courseclass.ccid}','${tid}')">删除</button>
                           		</c:if>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



</body>
</html>
