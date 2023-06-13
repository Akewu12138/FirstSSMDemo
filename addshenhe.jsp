<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>安排时间教室</title>
<script type="text/javascript">
	function addtimeandroom(time1,time2,time3,time4,time5,room,ccid,cid){
		if(time1.value>time2.value){
			alert("前面的周数不能大于后面的周数");
			defaultValue(time1,time2,time3,time4,time5);
		}else if(time4.value>time5.value){
			alert("前面的节数不能大于后面的节数");
			defaultValue(time1,time2,time3,time4,time5);	
		}else{
			alert(time1.value+"-"+time2.value+"周"+time3.value+"_"+time4.value+"-"+time5.value+"节"+room.value);
			var t=time1.value+'-'+time2.value+'周'+time3.value+'_'+time4.value+'-'+time5.value+'节';
			location.href="timeanpaiByccid?cid="+cid+"&ccid="+ccid+"&time="+t+"&rid="+room.value;
		}
		
		
	}
	//保留已选择的值
	function defaultValue(time1,time2,time3,time4,time5){
		var opts1=time1.getElementsByTagName("option");
		var opts2=time2.getElementsByTagName("option");
		var opts3=time3.getElementsByTagName("option");
		var opts4=time4.getElementsByTagName("option");
		var opts5=time5.getElementsByTagName("option");
		
		opts1[time1.selectedIndex].selected=true;
		opts2[time2.selectedIndex].selected=true;
		opts3[time3.selectedIndex].selected=true;
		opts4[time4.selectedIndex].selected=true;
		opts5[time5.selectedIndex].selected=true;
	}
	
</script>
</head>
<body>
<c:if test="${t==0}">
<h4>该时间段的教室被占用</h4>
</c:if>
<div align="center">
		<table>
			<tr>
				<td>课程名称：</td>
				<td><input type="text" value="${cou.course.cname }" name="cname" readonly="readonly" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"></td>
			</tr>
			<tr>
				<td>教师名称：</td>
				<td><input type="text" value="${cou.teacher.tname }" name="tname" readonly="readonly" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"></td>
			</tr>
			<tr>
				<td>容量：</td>
				<td><input type="text" value="${cou.class_capacity }" name="number" onkeyup="this.value=this.value.replace(/[^u4e00-u9fa5w]/g,'')"></td>
			</tr>
			<tr>
				<td>上课时间：</td>
				<td>
					<select  name="time1" id="time1">
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
           			</select>
           			到
           			<select  name="time2" id="time2">
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
           			</select>
           			周
           			<select  name="time3" id="time3">
           				<option value="星期一">星期一</option>
           				<option value="星期二">星期二</option>
           				<option value="星期三">星期三</option>
           				<option value="星期四">星期四</option>
           				<option value="星期五">星期五</option>
           				<option value="星期六">星期六</option>
           				<option value="星期日">星期日</option>
           			</select>
           			第
           			<select  name="time4" id="time4">
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
           			</select>
           			到
           			<select  name="time5" id="time5">
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
           			</select>
           			节
				</td>
			</tr>
			<tr>
				<td>教室：</td>
				<td>
					<select  name="room" id="room">
           				<c:forEach items="${rooms }" var="rs">
							<option value="${rs.rid }">${rs.rid }</option>
						</c:forEach>

           			</select>
				</td>
			</tr>
			<tr>
                <td>&nbsp;</td>
                <td>
                    <button type="button" onclick="addtimeandroom(time1,time2,time3,time4,time5,room,'${cou.ccid}','${cou.course.cid }')">添加</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </td>
            </tr>
		</table>
</div>
</body>
</html>