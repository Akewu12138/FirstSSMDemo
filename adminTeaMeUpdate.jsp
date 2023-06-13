<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>教师信息修改</title>
</head>
<body>
<div align="center">
    <h2>教师信息修改</h2><br>
    <form method="post" action="adminteaMessageUpdate">
        <table width="400">
            <tr>
            	<td width="150px">账&nbsp;&nbsp;号：</td>
            	<td><input type="text" value="${teacherMap.id}" name="id" readonly="readonly" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
            <tr>
                <td width="150px">请输入教师姓名：</td>
                <td><input type="text" name="tname" value="${teacherMap.tname}" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
			<tr>
            <td width="150px">请输入教师所属学院：</td>
            <td>
           		<select  name="college" >
           			<option value="0" >计算机学院</option>
           			<option value="1">数理与土木工程学院</option>
           			<option value="2">设计与艺术学院</option>
           			<option value="3">信息学院</option>
           			<option value="4">继续教育学院</option>
           			<option value="5">商学院</option>
           			<option value="7">航空学院</option>
           		</select>
           	</td>
            </tr>
            <tr>
                <td width="150px">请输入教师密码：</td>
                <td><input type="text" name="password" value="${teacherMap.password}"/><br></td>
            </tr>
            <tr>
           		<td width="150px">请输入教师性别：</td>
           		<td>
           		<select  name="tsex" >
           			<option value="0" >男</option>
           			<option value="1">女</option>
           		</select>
           		</td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td>
                    <input type="submit" name="Submit" value="修改"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="Reset" value="取消"/><p>
                </td>
            </tr>
        </table>
    </form>
    <a href="findTeacherAll">返回信息页</a><p>
</div>
</body>
</html>