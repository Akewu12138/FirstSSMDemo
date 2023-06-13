<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<style>
    body{
        width: 100%;
        height: 100%;
        background-size: 100%;
        background-image: url("op1.jpg");
    }

   /* td{
        width: 12.5%;
        align-items: center;
    }*/
    table{
        width: 100%;
        text-align: center;

    }
    b{
        margin-left: 40%;

    }
    .le{
        margin-left: 41%;
        color: red;
        font-size: 30px;
    }
</style>




<title>开课</title>
</head>

<body>
<form action="addOC" method="get" onsubmit="submit()">
    <span class="le">${Err}</span><br/>
    <b>开课班号:<input size="27px" type="text"  onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" name="ccid" value="${openOne.ccid}">
    </b>  <span>${ccidErr}</span> <br/>
    <b>课程编号:<input size="27px" type="text" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" disabled name="cid" value="${course.cid}"></b>
    <span>${cidErr}<span/>
    <br/>
    <b>课程名称:<input size="27px" type="text" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" disabled name="cname" value="${course.cname}"></b>
            <span>${cnameErr}<span/><br/>

    <b>容&nbsp; &nbsp;量:<input size="30px" type="text"  name="classCapacity" value="${openOne.classCapacity}" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"></b><br/>
    <b>学&nbsp; &nbsp;分:<input size="30px" type="text"  onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" disabled name="credit" value="${course.credit}"></b><br/>
    <b>学&nbsp; &nbsp;时:<input size="30px" type="text" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" disabled  name="period" value="${course.period}"></b><br/>
   <b><input type="radio" name="term" value="第一学期" checked>第一学期 &nbsp
   <input type="radio" name="term" value="第二学期">第二学期</b>
    <br/>
    <b> <input type="submit" value="添加"><input type="reset" value="取消"></b>
     <span class="le">${success}</span>
</form>

<table border="1">
    <tr>
        <th>开课班号</th>
        <th>课程名称</th>
        <th>教室</th>
        <th>时间</th>
        <th>学年</th>
        <th>学期</th>
        <th>学分</th>
        <th>学时</th>
        <th>容量</th>
    </tr>
    <c:forEach items="${openclass}" var="oc">
        <tr>
            <td>${oc.ccid}</td>
            <td>${oc.cname}</td>
            <td>${oc.rid}</td>
            <td>${oc.time}</td>
            <td>${oc.year}</td>
            <td>${oc.term}</td>
            <td>${oc.credit}</td>
            <td>${oc.period}</td>
            <td>${oc.classCapacity}</td>
        </tr>
    </c:forEach>
</table>


</body>


</html>