<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息修改</title>
</head>
<body>
<div align="center">
    <h2>个人信息修改</h2><br>
    <form method="post" action="stuMessageUpdate">
        <table width="400">
            <td width="150px">账&nbsp;&nbsp;号：</td>
            <td><input type="text" value="${sid}" name="sid" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" readonly="readonly" /><br></td>
            </tr>
            <tr>
                <td width="150px">请输入你的电话：</td>
                <td><input type="text" name="phone" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" value="${student.phone }"/><br></td>
            </tr>
                        <tr>
                <td width="150px">请输入你的生日：</td>
                <td><input type="text" name="birthday"value="${student.birthday }"/></td>
            </tr>
            <tr>
                <td width="150px">请输入你的密码：</td>
                <td><input type="text" name="password"value="${student.password }"/></td>
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
    <a href="stuMessage?sid=${sid} ">返回学生面信息页</a><p>
</div>

</body>
</html>
