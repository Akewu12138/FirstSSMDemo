<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
    <style>
        table{
            margin-left: 20%;
        }
    </style>

        <script>
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
        </script>
</head>
<body>

<table border="1">
    <tr>
        <td align="center">课程编号</td>
        <td align="center">课程名称</td>
        <td align="center">课程类型</td>
        <td align="center">考试类型</td>
        <td align="center">学时</td>
        <td align="center">学分</td>
        <td align="center">权限</td>
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
            <td align="center">${cou.status }</td>
            <td><a href="courseclassView?cid=${cou.cid }"><button>查看开课班</button></a>
                <c:if test="${cou.status=='1'}">
                <a onclick="jinzhi('${cou.cid}',${pageBean.currentPage })">
                    <input type="button" value="可开课" id="YX" style="background-color: palegreen" >
                </a>
                </c:if>
                <c:if test="${cou.status=='0'}">
                <a onclick="yunxu('${cou.cid}','${pageBean.currentPage }')"><input type="button" value="不可开课" id="JZ" style="background-color: orangered" ></a>
                </c:if>
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
                <a href="courseListPageTeacher?page=1">首页</a>
                | <a href="courseListPageTeacher?page=${pageBean.currentPage-1 }">上一页</a>
            </c:if>

            <c:forEach begin="1" end="${pageBean.totalPage }" var="i">
                <c:if test="${pageBean.currentPage == i }">
                    ${i }
                </c:if>
                <c:if test="${pageBean.currentPage != i }">
                    <a href="courseListPageTeacher?page=${i }">${i }</a>
                </c:if>

            </c:forEach>


            <c:if test="${pageBean.currentPage !=pageBean.totalPage && pageBean.totalPage!=0}">
                <a href="courseListPageTeacher?page=${pageBean.currentPage+1 }">下一页</a> |
                <a href="courseListPageTeacher?page=${pageBean.totalPage }">尾页</a>
            </c:if>
        </td>
    </tr>
</table>
</body>

</html>