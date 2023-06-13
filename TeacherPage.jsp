<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>高校选课系统教师端</title>
    <link href="css/parent.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="./img/avatar.jpg" sizes="32x32"/>
    <script type="text/javascript">
    function logout() {
    	var flag=confirm('是否退出?')
        if (flag) {
            location.href = 'login.jsp';
        } 

    }
</script>
</head>

<body>
<!--顶部信息区-->
<header role="header">
    <div>
        <h1>高校选课系统</h1>
        <nav role="user">
            <ul>
                <li>欢迎老师:<strong>${username}</strong></li>
                <li><a href="teaMessage?tid=${tid}" target="main">教师个人信息管理</a></li>
                <li><a onclick="logout()">退出登录</a></li>
            </ul>
        </nav>
    </div>
</header>
<!--圣杯二列布局-->
<main role="main">
    <!--主体内联框架区-->
    <article role="content">
        <iframe src="Student-Welcome.jsp" name="main"></iframe>
        <footer role="copyright">
            <p><a href="#">2023 牛楠骡子</a> ©版权所有</p>
        </footer>
    </article>
    <!--左侧导航区-->
    <aside>
        <nav role="option">
            <ul>
                <li><h3>·&nbsp;导航列表</h3></li>
                <li><a href="findNoticeAll2" target="main">查看公告</a></li>
                <li><a href="daishenhe?tid=${tid}" target="main">待审核</a>
                <li><a href="kecheng" target="main">课程</a>
                <li><a href="Mykecheng" target="main">我的开课班</a>
            </ul>
        </nav>
    </aside>
</main>


</body>

</html>

