<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>学生信息修改</title>
</head>
<body>
<div align="center">
    <h2>个人信息修改</h2><br>
    <form method="post" action="adminstuMessageUpdate">
        <table width="400">
            <tr>
            	<td width="150px">账&nbsp;&nbsp;号：</td>
            	<td><input type="text" value="${studentMap.id}" name="id" readonly="readonly"  onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
            <tr>
                <td width="150px">请输入学生姓名：</td>
                <td><input type="text" name="sname" value="${studentMap.sname}" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
            <tr>
           		<td width="150px">请输入学生性别：</td>
           		<td>
           		<select  name="sex" >
           			<option value="0">男</option>
           			<option value="1">女</option>
           		</select>
           		</td>
            </tr>
            <tr>
                <td width="150px">请输入学生电话号码：</td>
                <td><input type="text" name="phone" value="${studentMap.phone}" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/><br></td>
            </tr>
            <tr>
                <td width="150px">请输入学生生日：</td>
                <td><input type="text" name="birthday" value="${studentMap.birthday}"/><br></td>
            </tr>
<tr>
                <td width="150px">请输入学生密码：</td>
                <td><input type="text" name="password" value="${studentMap.password}"/><br></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <input type="submit" name="Submit" value="修改"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="Reset" value="重置"/><p>
                </td>
            </tr>
        </table>
    </form>
    <a href="findStudentAll">返回信息页</a><p>
</div>
</body>
</html>