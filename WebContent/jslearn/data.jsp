<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="<%=path%>/js/common/jquery-1.9.1.min.js">
</script>
<title>JavaScript的数据结构</title>
</head>
<body>
<div id="map">


</div>
<script type="text/javascript">
	$(document).ready(function(){
		var status = {"Airline":"false","Airflight":"false"};
		
		var key = "Airline";
		var text = "Airline:" + status["Airline"] + ":" + status[key];
		
		
		$("#map").text(text);
		
	});
</script>
</body>
</html>