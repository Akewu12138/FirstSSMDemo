<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>课程管理</title>

	<script>
		function search(){
			var content=document.getElementById("search").value;
			if(content!=null){
				location.href="searchAdmin?content="+content;
			}
			else{
				alert("搜索不能为空!")
			}
		}

		function jinzhi(cid,page){
				var flag=confirm("是否禁止课程"+cid+"添加开课班")
				if(flag){
					document.getElementById("YX").style.background="palegreen ";
					document.getElementById("YX").value="禁止开课";
					location.href="jinzhi?cid="+cid+"&page="+page;
				}
		}

		function yunxu(cid,page){
			var flag=confirm("是否允许课程"+cid+"添加开课班");
			if(flag){
				document.getElementById("JZ").style.background="orangered";
				document.getElementById("JZ").value="允许开课";
				location.href="yunxu?cid="+cid+"&page="+page;
			}}

		function update(cid,cname,credit,period,coursetype,examtype){
			location.href="updateOpenCourse?cid="+cid+"&cname="+cname+"&credit="+credit+"&period="+period+"&coursetype="+coursetype+"&examtype="+examtype
		}
	</script>

</head>
<body>
<input style="margin-left: 28%" type="text" size="50px" id="search"> <input type="button" value="搜索" onclick="search()">

<div align="center">

	<table border="1">
	<tr>
		<td align="center">课程编号</td>
		<td align="center">课程名称</td>
		<td align="center">课程类型</td>
		<td align="center">考试类型</td>
		<td align="center">学时</td>
		<td align="center">学分</td>
		<td align="center">操作</td>
	</tr>
	
	<c:forEach items="${pageBean.list }" var="cou">
	<tr>
		<td align="center">${cou.cid }</td>
		<td align="center">${cou.cname }</td>
		<td align="center">${cou.coursetype}</td>
		<td align="center">${cou.examtype}</td>
		<td align="center">${cou.period}</td>
		<td align="center">${cou.credit }</td>
		<td><a href="courseclassView?cid=${cou.cid }"><button>查看开课班</button></a>
		<c:if test="${flag1==0}">
			<c:if test="${cou.status=='1'}">
			<a onclick="jinzhi('${cou.cid}',${pageBean.currentPage })">
				<input type="button" value="可开课" id="YX" style="background-color: palegreen" >
			</a>
			</c:if>
			<c:if test="${cou.status=='0'}">
			<a onclick="yunxu('${cou.cid}','${pageBean.currentPage }')"><input type="button" value="不可开课" id="JZ" style="background-color: orangered" ></a>
			</c:if>
			</c:if>
			<c:if test="${flag1==1}">
			<input type="button" value="不可开课" style="background-color: orangered" >
			</c:if>
			<button onclick="update('${cou.cid}','${cou.cname}','${cou.credit}','${cou.period}','${cou.coursetype}','${cou.examtype}','')">修改</button>
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
                        <a href="courseListPageAdmin?page=1">首页</a>
                        | <a href="courseListPageAdmin?page=${pageBean.currentPage-1 }">上一页</a>
                    </c:if>
                    
                    <c:forEach begin="1" end="${pageBean.totalPage }" var="i">
                        <c:if test="${pageBean.currentPage == i }">
                            ${i }
                        </c:if>
                        <c:if test="${pageBean.currentPage != i }">
                            <a href="courseListPageAdmin?page=${i }">${i }</a>
                        </c:if>
                    
                    </c:forEach>
                    
                    
                    <c:if test="${pageBean.currentPage !=pageBean.totalPage && pageBean.totalPage!=0}">
                        <a href="courseListPageAdmin?page=${pageBean.currentPage+1 }">下一页</a> | 
                        <a href="courseListPageAdmin?page=${pageBean.totalPage }">尾页</a>
                    </c:if>
                </td>
	</tr>
	</table>
</div>
<c:if test="${flag1==0}">
<a style="margin-left: 70%" href="opencourse.jsp">前往开课</a><span style="color: palegreen">${success}</span>
</c:if>

</body>
</html>