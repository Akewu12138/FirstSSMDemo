<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>高校选课系统学生端</title>
    <link href="parent.css" rel="stylesheet" type="text/css" />

</head>

<body>
<!--顶部信息区-->
<header role="header">
    <div>
        <h1>高校选课系统</h1>
        <nav role="user">
            <ul>
                <li><a  onclick="logout()">退出登录</a></li>
            </ul>
        </nav>
    </div>
</header>
<!--圣杯二列布局-->
<main role="main">
    <!--主体内联框架区-->
    <article role="content">
        <iframe src="hello?tid=${tid}" name="main" ></iframe>
        <footer role="copyright">
          <%--  <p><a href="#">2023 牛楠骡子</a> ©版权所有</p>--%>
        </footer>
    </article>
    <!--左侧导航区-->
    <aside>
        <nav role="option">
            <ul>
                <li><h3>·&nbsp;导航列表</h3></li>
                <li><a href="/daishenhe?tid=${tid}" target="main">待审核</a>
                <li><a href="/kecheng" target="main">课程</a>
                <li><a href="/Mykecheng" target="main">我的开课班</a>

                </li>

            </ul>
        </nav>
    </aside>
</main>

<script>
    function logout() {
        if (window.confirm('是否退出?')) {
            window.location.href = 'login.jsp';
        } else {
            return false;
        }
    }
</script>
</body>

</html>

