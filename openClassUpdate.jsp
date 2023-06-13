<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
<style>
    html,body{
        width: 100%;

    }
    /*div{
        width: 100%;
        text-align: center;
    }*/

    b{
        margin-left: 45%;
    }

</style>

</head>
<body>
<div>
    <span style="color: red;margin-left: 46%">${nullErr}</span>
    <form action="updateOCComfirm">
<b>开课班号:<input size="30px" type="text" disabled="disabled" value=${oc.ccid}  name=ccid>
</b>   <br/>
<b>课程名称:<input size="30px" type="text" disabled="disabled" value="${oc.cname}" name="cname"></b><br/>
<b>教室:<input size="30px" type="text" disabled value="${oc.rid}" name="rid"></b>
        <span>${ridErr}</span><br/>
<b>时间:<input size="30px" type="text" disabled value="${oc.time}" name="time"></b><br/>
<b>学年:<input size="30px" type="text" value="${oc.year}" name="year"></b><br/>
<b>学期:<input size="30px" type="text" value="${oc.term}" name="term"></b><br/>
<b>容量:<input size="30px" type="text" value="${oc.classCapacity}" name="classCapacity" onkeyup="value=value.replace(/[^\d]/g,'')"></b><br/>
<b>学分:<input size="30px" type="text" disabled="disabled" value="${oc.credit}" name="credit"></b><br/>
<b>学时:<input size="30px" type="text" disabled="disabled" value="${oc.period}" name="period"></b><br/>
      <b> <input type="submit" value="确认修改"><input type="button" value="取消"></b>
    </form>
</div>

</body>
</html>