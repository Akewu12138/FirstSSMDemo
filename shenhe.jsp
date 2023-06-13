<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>审核</title>
<script type="text/javascript">
	function addtime(year1,month1,day1,year2,month2,day2){
	
		var time1=year1.value+"-"+month1.value+"-"+day1.value;
		var time2=year2.value+"-"+month2.value+"-"+day2.value;
		if(time1>time2){
			alert("开始时间不能大于结束时间");
		}else{
			if(month1.value==4||month1.value==6||month1.value==9||month1.value==11)
			{
				if(day1.value>30){
					alert(month1.value+"没有31日");
				}else{
					alert("已修改选课时间");
					location.href="updateXuanKeTime?page=${pageBean.currentPage}&starttime="+time1+"&endtime="+time2;
				}
				
			}else if(month2.value==4||month2.value==6||month2.value==9||month2.value==11){
				if(day2.value>30){
					alert(month2.value+"没有31日");
				}else{
					alert("已修改选课时间");
					location.href="updateXuanKeTime?page=${pageBean.currentPage}&starttime="+time1+"&endtime="+time2;
				}
			}else if(month1.value==2){
				if(day1.value>28){
					alert(month1.value+"没有29,30,31日");
				}else{
					alert("已修改选课时间");
					location.href="updateXuanKeTime?page=${pageBean.currentPage}&starttime="+time1+"&endtime="+time2;
				}
				
			}else if(month2.value==2){
				if(day2.value>28){
					alert(month2.value+"没有29,30,31日");
				}else{
					alert("已修改选课时间");
					location.href="updateXuanKeTime?page=${pageBean.currentPage}&starttime="+time1+"&endtime="+time2;
				}
				
			}else {
				alert("已修改选课时间");
				location.href="updateXuanKeTime?page=${pageBean.currentPage}&starttime="+time1+"&endtime="+time2;
			}
		}
		
		
		
	}
	
</script>
</head>
<body>
<div align="center">
<h2>审核列表</h2>
<table border="1">
	选课开始时间：
	<select name="year1" id="year1">
		<c:forEach items="${times }" var="time">
				<option value="${time }">${time}</option>
		</c:forEach>
	</select>
	年
	<select name="month1" id="month1">
		<option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
	</select>
	月
	<select name="day1" id="day1">
		<option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
	</select>
	日
<br>
	选课结束时间：
	<select name="year2" id="year2">
		<c:forEach items="${times }" var="time">
				<option value="${time }">${time}</option>
		</c:forEach>
	</select>
	年
	<select name="month2" id="month2">
		<option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
	</select>
	月
	<select name="day2" id="day2">
		<option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
	</select>
	日
<br>
<button type="button" onclick="addtime(year1,month1,day1,year2,month2,day2)">提交</button>
<tr>
	<th>开课班号</th>
	<th>课程名称</th>
	<th>教师名称</th>
	<th>学分</th>
	<th>学时</th>
	<th>容量</th>
	<th>状态</th>
</tr>
<c:forEach items="${pageBean.list }" var="x">
	<tr>
		<td align="center">${x.ccid }</td>
		<td align="center">${x.course.cname }</td>
		<td align="center">${x.teacher.tname }</td>
		<td align="center">${x.course.credit }</td>
		<td align="center">${x.course.period }</td>
		<td align="center">${x.class_capacity }</td>
		<td align="center"><a href="shenheView?ccid=${x.ccid }"><button>审核</button></a></td>
	</tr>
</c:forEach>
<tr>
                <td colspan="8">
                    第 ${pageBean.currentPage } / ${pageBean.totalPage }页
                    &nbsp;&nbsp;
                    每页显示${pageBean.pageSize }条  &nbsp;&nbsp;&nbsp;
                    总记录数${pageBean.totalSize }条 &nbsp;&nbsp;&nbsp;
                    
                    <c:if test="${pageBean.currentPage !=1 }">
                        <a href="courseListPage?page=1">首页</a>
                        | <a href="courseListPage?page=${pageBean.currentPage-1 }">上一页</a>
                    </c:if>
                    
                    <c:forEach begin="1" end="${pageBean.totalPage }" var="i">
                        <c:if test="${pageBean.currentPage == i }">
                            ${i }
                        </c:if>
                        <c:if test="${pageBean.currentPage != i }">
                            <a href="courseListPage?page=${i }">${i }</a>
                        </c:if>
                    
                    </c:forEach>
                    
                    
                    <c:if test="${pageBean.currentPage !=pageBean.totalPage && pageBean.totalPage!=0}">
                        <a href="courseListPage?page=${pageBean.currentPage+1 }">下一页</a> | 
                        <a href="courseListPage?page=${pageBean.totalPage }">尾页</a>
                    </c:if>
                </td>
	</tr>
</table>
</div>
</body>
</html>