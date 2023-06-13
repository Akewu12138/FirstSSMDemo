<%--
  Created by IntelliJ IDEA.
  User: Xa'vi'er
  Date: 2023/4/24
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登陆页面</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <style type="text/css">
        body{
            margin: 0;
            padding: 0;
            background-image: url("images/background.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        a{
            color: #666;
            text-decoration: none;
        }
        #bigBox
        {
            margin: 0 auto;
            margin-top: 150px;
            padding: 20px 50px;
            background-color: #000000;
            width: 580px;
            height: 650px;
            border-radius: 20px;
            text-align: center;
            background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
            opacity: 0.85;
        }
        #bigBox h1
        {
            font-size: 40px;
            color: floralwhite;
        }
        #bigBox .inputBox
        {
            margin-top: 15px;
        }
        #bigBox .inputBox .inputText
        {
            margin-top: 10px;
        }
        #bigBox .inputBox .inputText input
        {
            border: 0;
            padding: 10px 10px;
            border-bottom: 1px solid white;
            background-color: #00000000;
            color: white;
            width: 200px;
            height: 30px;
            font-size: 15px;
        }
        a{
            margin-left: 40px;
            color: #666;
            font-size: 15px;
            color: floralwhite;
        }
        #bigBox .inputBox .inputText i
        {
            color: white;
        }
        #bigBox .inputBox .inputButton
        {
            border: 0;
            width: 200px;
            height: 50px;
            color: white;
            margin-top: 55px;
            border-radius:20px;
            background-image: linear-gradient(to top, #30cfd0 0%, #330867 100%);
        }
        p{
            text-align: center;
            font-size: 20px;
            color: white;
        }
    </style>
</head>
<body>
<p>${registerError}</p>
<p>${registerSuccess}</p>
<div id="bigBox">
    <h1>学生用户注册</h1>
    <div class="inputBox">
        <form id="registerForm" action="Register" method="post">
            <div class="inputText">
                <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                <label>
                    <input type="text" placeholder="账号(必填)" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')" name="id"/>
                </label>
            </div>
            <div class="inputText">
                <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                <label>
                    <input type="text" placeholder="姓名" name="sname" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/>
                </label>
            </div>
            <div class="inputText">
                <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                <label>
                    <input type="text" placeholder="性别" name="sex"/>
                </label>
            </div>
            <div class="inputText">
                <i class="fa fa-user-circle"  style="color: whitesmoke;"></i>
                <label>
                    <input type="text" placeholder="手机号" name="phone" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"/>
                </label>
            </div>
            <div class="inputText">
                <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                <label>
                    <input type="text" placeholder="生日" name="birthday"/>
                </label>
            </div>
            <div class="inputText">
                <i class="fa fa-key" style="color: whitesmoke;"></i>
                <label>
                    <input type="password" placeholder="密码（必填）" name="password"/>
                </label>
            </div>
            <input type="submit" class="inputButton" value="注册" id="btn" />
            <a href="login.jsp">返回登录页面</a>
        </form>
    </div>
</div>


</body>
</html>