<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

<title>学生信息</title>
</head>
<body>

<h3 align="center">学生信息</h3><p>
<h4 align="center"><a href="gostuMessageUpdate?sid=${sid}"><strong>修改个人信息</strong></a></h4>
<div>

    <table  width="50%" align="center" border=1 bgcolor=gray cellspacing="0" cellpadding="0" bordercolordark="#000000" bordercolorlight="#CCCC99">

        <tr>
            <td>学&nbsp;&nbsp;号</td>
            <td>${student.id}</td>
        </tr>
        <tr>
            <td>姓&nbsp;&nbsp;名</td>
            <td>${student.sname}</td>
        </tr>
        <tr>
            <td>性&nbsp;&nbsp;别</td>
            <td>${student.sex}</td>
        </tr>
        <tr>
            <td>电&nbsp;&nbsp;话</td>
            <td>${student.phone}</td>
        </tr>
        <tr>
            <td>生&nbsp;&nbsp;日</td>
            <td>${student.birthday}</td>
        </tr>
        <tr>
            <td>密&nbsp;&nbsp;码</td>
            <td>${student.password}</td>
        </tr>
        

            
        


</div>
</table><br>
</body>
</html>