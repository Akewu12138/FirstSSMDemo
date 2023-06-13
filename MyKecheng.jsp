<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
    <style>
        body{
            width: 100%;
            height: 100%;
            background-size: 100%;
            background-image: url("op1.jpg");
        }

        /* td{
             width: 12.5%;
             align-items: center;
         }*/
        table{
            width: 100%;
            text-align: center;

        }
        b{
            margin-left: 40%;

        }
        .le{
            margin-left: 41%;
            color: red;
            font-size: 30px;
        }
    </style>
        <script type="text/javascript">
            function updateOC(ccid,cname,rid,time,year,term,credit,period,classCapacity){

            location.href = "updateOC?ccid="+ccid+"&cname="+cname+"&rid="+rid+"&time="+time+"&year="+year+"&term="+term+"&credit="+credit+"&period="+period+"&classCapacity="+classCapacity
        }
            function deleteOC(ccid){

            var flag=confirm("是否删除开课班号:"+ccid);
            if(flag){
            location.href="deleteOC?ccid="+ccid
        }


        }

            function jinyong(ccid,number){
            if(number==0){
            var flag=confirm("是否禁用开课班--"+ccid);
            if(flag){
            document.getElementById("JY").value="启用";
            location.href="jinyong?ccid="+ccid;
        }
        }else{
            alert("该开课班已有学生,无法禁用")
        }

        }

            function qiyong(ccid){

            var flag=confirm("是否启用开课班--"+ccid);
            if(flag){
            document.getElementById("QY").value="禁用";
            location.href="qiyong?ccid="+ccid;
        }


        }
            
        	function courseclassFindAllStu(ccid,number){
    			if(number==0){
    				alert("班级为空")
    				}

    			else{

    				location.href="courseclassFindAllStu?ccid="+ccid;

    			}

    		}

    </script>
  
</head>
<body>
<span style="margin-left: 44%;color: lightgreen "  >${success}</span>
<table border="1">
    <tr>
        <th>开课班号</th>
        <th>课程名称</th>
        <th>教室</th>
        <th>时间</th>
        <th>学年</th>
        <th>学期</th>
        <th>学分</th>
        <th>学时</th>
        <th>容量</th>
        <th>已选人数</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${openclass}" var="oc">
        <tr>
            <td>${oc.ccid}</td>
            <td>${oc.cname}</td>
            <td>${oc.rid}</td>
            <td>${oc.time}</td>
            <td>${oc.year}</td>
            <td>${oc.term}</td>
            <td>${oc.credit}</td>
            <td>${oc.period}</td>
            <td>${oc.classCapacity}</td>
            <td>${oc.number}</td>
            <td>
            
			<c:if test="${flag1==0}">
            <a onclick="deleteOC('${oc.ccid}')" ><input type="button" value="删除"></a><%-- 原先执行添加事件的原因.   在表单中使用<button>标签，但未指定type属性值，会像type值为submit的input控件一样完成表单提交动作。--%>
                <a onclick="updateOC('${oc.ccid}','${oc.cname}','${oc.rid}','${oc.time}','${oc.year}','${oc.term}','${oc.credit}','${oc.period}','${oc.classCapacity}')">
                    <input type="button" value="修改">
                </a>
                <c:if test="${oc.status=='1'}">
                    <input type="button" value="禁用" id="JY" onclick="jinyong('${oc.ccid}','${oc.number}')">
                </c:if>
                <c:if test="${oc.status=='0'}">
                    <input type="button" value="启用" id="QY" onclick="qiyong('${oc.ccid}')">
                </c:if>
                </c:if>
                
                
                <a href="getCourseStudent?ccid=${oc.ccid}&tid=${tid}"><button>查看班级</button></a>
                
            </td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
