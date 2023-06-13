<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>开课班管理</title>

	<script>

		function courseclassDelete(ccid,number,page,cid){
			if(number==0){
				var flag=confirm("是否删除开课班--"+ccid);
				if(flag){
					location.href="courseclassDelete?ccid="+ccid+"&number="+number+"&page="+page+"&cid="+cid;
				}
			}else{
				alert("该开课班已有学生,无法删除")
			}

		}

		function courseclassFindAllStu(ccid,number){
			if(number==0){
				alert("班级为空")
				}

			else{

				location.href="courseclassFindAllStu?ccid="+ccid;

			}

		}
	</script>
</head>
<body>
<div align="center">
	<table border="1">
	<tr>
		<td align="center">开课班号</td>
		<td align="center">课程名称</td>
		<td align="center">课程类型</td>
		<td align="center">任教老师</td>
		<td align="center">考试类型</td>
		<td align="center">学时</td>
		<td align="center">学分</td>
		<td align="center">人数</td>
		<td align="center">权限</td>
		<td align="center">操作</td>
	</tr>
	
	<c:forEach items="${pageBean.list }" var="cou">
	<tr>
		<td align="center">${cou.ccid }</td>
		<td align="center">${cou.cname }</td>
		<td align="center">${cou.coursetype }</td>
		<td align="center">${cou.tid}${cou.tname}</td>
		<td align="center">${cou.examtype}</td>
		<td align="center">${cou.period}</td>
		<td align="center">${cou.credit }</td>
		<td align="center">${cou.number }</td>
		<td align="center">${cou.status }</td>
		<td>
			<a onclick="courseclassFindAllStu('${cou.ccid}','${cou.number}')"><button>查看班级</button></a>
			<a onclick="courseclassDelete('${cou.ccid }','${cou.number}','${pageBean.currentPage}','${cou.cid}')"><button>删除</button></a>
		<td>	
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