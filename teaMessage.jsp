<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教师信息</title>
</head>
<body>

<h3 align="center">教师信息</h3><p>
<h4 align="center" ><a href="goteaMessageUpdate?sid=${sid}" >修改个人信息</a></h4>
 
<div>

  <table  width="50%" align="center" border=1 bgcolor=gray cellspacing="0" cellpadding="0" bordercolordark="#000000" bordercolorlight="#CCCC99">
    <tr>
      <td>工&nbsp;&nbsp;号</td>
      <td>${teacher.id}</td>
    </tr>
    <tr>
      <td>姓&nbsp;&nbsp;名</td>
      <td>${teacher.tname}</td>
    </tr>
    <tr>
      <td>学&nbsp;&nbsp;院</td>
      <td>${teacher.college}</td>
    </tr>
    <tr>
      <td>密&nbsp;&nbsp;码</td>
      <td>${teacher.password}</td>
    </tr>
    <tr>
       <td>性&nbsp;&nbsp;别</td>
       <td>${teacher.tsex}</td>
    </tr>
    
       
       
    

</div>

</table><br>
</body>
</html>