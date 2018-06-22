<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="<%=path%>/js/common/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/common/jquery.timers.js"></script>
<title>Jquery定时器</title>
</head>
<body>
<input type="button" value="start"  id="btn_start"/>
	<div id="container">
		
	</div>
</body>
<script type="text/javascript">
	var index = 0;
	
	var start = false;
	
	$(function(){
		$("#btn_start").click(function(){
			if (start) {
				$('body').stopTime('timerA');//everyTime('1s', doSomething);	
			} else {
				$('body').everyTime('1s','timerA',doSomething);		
			}
			start = !start;
			//setInterval(doSomething,1000);
		});
		
		function doSomething(){
			var html  = $("#container").html();
			html +=  "<div>" + index + "</div>";
			index++;
			$("#container").html(html);
		}
	});
</script>

</html>