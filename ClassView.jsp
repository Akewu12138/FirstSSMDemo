<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>开课班管理</title>
</head>
<body>
<div align="center">
	<table border="1">
	<tr>
		<td align="center">学号</td>
		<td align="center">姓名</td>
		<td align="center">性别</td>
        <td align="center">手机号</td>
        <td align="center">成绩</td>
	</tr>
	
	<c:forEach items="${pageBean.list }" var="cou">
	<tr>
		<td align="center">${cou.sid }</td>
		<td align="center">${cou.sname }</td>
		<td align="center">${cou.sex }</td>
        <td align="center">${cou.phone }</td>
        <td align="center">${cou.grade }</td>
	</tr>
	</c:forEach>
	
	<tr>
                <td colspan="8">
                    第 ${pageBean.currentPage } / ${pageBean.totalPage }页
                    &nbsp;&nbsp;
                    每页显示${pageBean.pageSize }条  &nbsp;&nbsp;&nbsp;
                    总记录数${pageBean.totalSize }条 &nbsp;&nbsp;&nbsp;
                    
                    <c:if test="${pageBean.currentPage !=1 }">
                        <a href="courseclassListPage?page=1&cid=${cid }">首页</a>
                        | <a href="courseclassListPage?page=${pageBean.currentPage-1 }&cid=${cid }">上一页</a>
                    </c:if>
                    
                    <c:forEach begin="1" end="${pageBean.totalPage }" var="i">
                        <c:if test="${pageBean.currentPage == i }">
                            ${i }
                        </c:if>
                        <c:if test="${pageBean.currentPage != i }">
                            <a href="courseclassListPage?page=${i }&cid=${cid }">${i }</a>
                        </c:if>
                    
                    </c:forEach>
                    
                    
                    <c:if test="${pageBean.currentPage !=pageBean.totalPage && pageBean.totalPage!=0}">
                        <a href="courseclassListPage?page=${pageBean.currentPage+1 }&cid=${cid }">下一页</a> | 
                        <a href="courseclassListPage?page=${pageBean.totalPage }&cid=${cid }">尾页</a>
                    </c:if>
                </td>
	</tr>
	</table>

</div>

</body>
</html>