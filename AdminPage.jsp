<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>高校选课系统管理员端</title>
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
                <li>欢迎管理员:<strong>${username}</strong></li>
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
                <li><a href="findTeacherAllByManager" target="main" class="active">教师用户管理</a></li>
                <li><a href="findStudentAllByManager" target="main" class="active">学生用户管理</a></li>
                <li><a href="courseFindAllAdmin" target="main" class="active">课程管理</a></li>
                <li><a href="findNoticeAllByManager" target="main">管理公告</a></li>
                <li><a href="turnToAdd?userName=${username}&aid=${aid}" target="main">创建公告</a></li>
                <li><a href="courseclassFindAllDaiShenhe" target="main">审核</a></li>
            </ul>
        </nav>
    </aside>
</main>


</body>

</html>

