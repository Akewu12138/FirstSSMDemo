<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生选课列表</title>

<script type="text/javascript">
 
    function doDelete(ccid) {
        /* 如果这里弹出的对话框，用户点击的是确定，就马上去请求。 
        如何知道用户点击的是确定。
        如何在js的方法中请求。 */
        var flag = confirm("是否确定退课?"+ccid);
        if(flag){
            //表明点了确定。 访问servlet。 在当前标签页上打开 超链接，
            //window.location.href="DeleteServlet?sid="+sid;
          	location.href="deleteXuanKe?page=${pageBean.currentPage}&sid=${sid}&ccid="+ccid;
        }
    }
    
    function doalert1(){
    	if(${flag}==1){
    		alert("无法选课，选择这门课程后，你的学分将会超过可选学分28分");
    	}
    }
    
</script>

</head>
<body>
<div align="center">
<c:if test="${flag1==1}">
<h4>不在选课时间，无法选课</h4>
</c:if>



<c:if test="${flag1==0}">
<P>用户: ${sid} 已选学分：${credit}  可选学分：28</P>
<h2>学生选课列表</h2>
<form method="post" action="selectLikeXuanKe">
		开课班号：<input type="text" name="ccid"> 
		课程名称：<input type="text" name="cname" size="21">
		<input type="hidden" name="sid" value="${sid}">
		<input type="hidden" name="page" value="${pageBean.currentPage}">
		<input type="submit" value="查询"><input type="reset" value="重置">
</form><p>
<table border="1">
<tr>
	<th>开课班号</th>
	<th>课程名称</th>
	<th>教师名称</th>
	<th>上课时间</th>
	<th>上课地点</th>
	<th>学分</th>
	<th>选课人数</th>
	<th><th>
</tr>



<c:forEach items="${pageBean.list }" var="x">
	<tr>
		<td align="center">${x.courseclass.ccid }</td>
		<td align="center">${x.courseclass.course.cname }</td>
		<td align="center">${x.courseclass.teacher.tname }</td>
		<td align="center">${x.courseclass.timeap.time }</td>
		<td align="center">${x.courseclass.timeap.room.rid }</td>
		<td align="center">${x.courseclass.course.credit }</td>
		<td align="center">${x.courseclass.number }/${x.courseclass.class_capacity }</td>
		<td><a href="insertXuanKe?sid=${sid}&ccid=${x.courseclass.ccid }&page=${pageBean.currentPage}"><button type="button" onclick="doalert1()">选课</button></a><td>	
	</tr>
</c:forEach>
	<tr>
                <td colspan="8">
                    第 ${pageBean.currentPage } / ${pageBean.totalPage }页
                    &nbsp;&nbsp;
                    每页显示${pageBean.pageSize }条  &nbsp;&nbsp;&nbsp;
                    总记录数${pageBean.totalSize }条 &nbsp;&nbsp;&nbsp;
                    
                    <c:if test="${pageBean.currentPage !=1 }">
                        <a href="xuanKeListPage?page=1&sid=${sid}">首页</a>
                        | <a href="xuanKeListPage?page=${pageBean.currentPage-1 }&sid=${sid}">上一页</a>
                    </c:if>
                    
                    <c:forEach begin="1" end="${pageBean.totalPage }" var="i">
                        <c:if test="${pageBean.currentPage == i }">
                            ${i }
                        </c:if>
                        <c:if test="${pageBean.currentPage != i }">
                            <a href="xuanKeListPage?page=${i }&sid=${sid}">${i }</a>
                        </c:if>
                    
                    </c:forEach>
                    
                    
                    <c:if test="${pageBean.currentPage !=pageBean.totalPage && pageBean.totalPage!=0}">
                        <a href="xuanKeListPage?page=${pageBean.currentPage+1 }&sid=${sid}">下一页</a> | 
                        <a href="xuanKeListPage?page=${pageBean.totalPage }&sid=${sid}">尾页</a>
                    </c:if>
                </td>
	</tr>

</table>

<h2>学生已选课程列表</h2>
<table border="1">
<tr>
	<th>开课班号</th>
	<th>课程名称</th>
	<th>教师名称</th>
	<th>上课时间</th>
	<th>上课地点</th>
	<th>学分</th>
	<th><th>
</tr>
<c:forEach items="${studentXuanKes }" var="sx">
	<tr>
		<td align="center">${sx.courseclass.ccid }</td>
		<td align="center">${sx.courseclass.course.cname }</td>
		<td align="center">${sx.courseclass.teacher.tname }</td>
		<td align="center">${sx.courseclass.timeap.time }</td>
		<td align="center">${sx.courseclass.timeap.room.rid }</td>
		<td align="center">${sx.courseclass.course.credit }</td>
		<td><button type="button" onclick="doDelete('${sx.courseclass.ccid}')">退课</button><td>
	</tr>
</c:forEach>
</table>
</c:if>
</div>
</body>
</html>