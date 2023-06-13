<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<style>
    body{
        text-align: center;
    }
    table{
        margin: 0 auto;
    }

</style>
<script>
    function excl(ccid){
    var flag=confirm("是否取消审核:"+ccid);
    if(flag){
    location.href="/excl?ccid="+ccid
    }}
</script>
</head>
<body>

<table border="1">
    <tr>
        <th>开课班号</th>
        <th>课程名称</th>
        <th>学分</th>
        <th>学时</th>
        <th>容量</th>
        <th>状态</th>
    </tr>
    <c:forEach items="${openclass}" var="oc">
        <tr>
            <td>${oc.ccid}</td>
            <td>${oc.cname}</td>
            <td>${oc.credit}</td>
            <td>${oc.period}</td>
            <td>${oc.classCapacity}</td>
            <td>
                    <input type="button" value="待审核">
                    <input onclick="excl('${oc.ccid}')" type="button" value="取消">
            </td>

        </tr>
    </c:forEach>
</table>
</body>
</html>