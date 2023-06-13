<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
    <script>
        function exErr(){
            location.href="/exErr"
        }
    </script>
</head>
<body>
${exErr} <br/>
<a onclick="exErr()">返回</a>
</body>


</html>
