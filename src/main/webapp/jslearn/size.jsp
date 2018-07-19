<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Jquery获取当前窗口等的大小</title>
<script type="text/javascript" src="<%=path%>/js/common/jquery-1.9.1.min.js"></script>
<style type="text/css">
/*body {
	margin:0;
	padding:0;	
}*/
</style>
</head>

<body>
	<div><span>浏览器时下窗口可视区域宽度：</span><input id="1" /></div>
	<div><span>浏览器时下窗口文档的宽度：</span><input id="2" /></div>
	<div><span>浏览器时下窗口文档body宽度：</span><input id="3" /></div>
	<div><span>浏览器时下窗口文档body的总宽度（含border margin padding）：</span><input id="4" /></div>
	
	<div><span>浏览器时下窗口可视区域高度：</span><input id="5" /></div>
	<div><span>浏览器时下窗口文档的高度：</span><input id="6" /></div>
	<div><span>浏览器时下窗口文档body高度：</span><input id="7" /></div>
	<div><span>浏览器时下窗口文档body的总高度（含border margin padding）：</span><input id="8" /></div>
<!--  域宽："+ document.body.offsetWidth +" (包括边线和滚动条的宽)"; 
网页可见区域高："+ document.body.offsetHeight +" (包括边线的宽)"; 
网页正文全文宽："+ document.body.scrollWidth; 
网页正文全文高："+ document.body.scrollHeight; 
网页被卷去的高："+ document.body.scrollTop; 
网页被卷去的左："+ document.body.scrollLeft; 
网页正文部分上："+ window.screenTop; 
网页正文部分左："+ window.screenLeft; 
屏幕分辨率的高："+ window.screen.height; 
屏幕分辨率的宽："+ window.screen.width; 
屏幕可用工作区高度："+ window.screen.availHeight; 
屏幕可用工作区宽度："+ window.screen.availWidth; 
你的屏幕设置是 "+ window.screen.colorDepth +" 位彩色"; 
你的屏幕设置 "+ window.screen.deviceXDPI +" 像素/英寸"; -->

	<p>
		body的高度和宽度与窗口文档的高度与宽度不等的原因是，body有margin和padding值
		
	</p>
</body>
<script type="text/javascript">
	$(function(){
		$(window).resize(showSize);
		showSize();
		function showSize(){
			$("#1").val($(window).width());
			$("#2").val($(document).width());
			$("#3").val($(document.body).width());
			$("#4").val($(document.body).outerWidth(true));
			
			$("#5").val($(window).height());
			$("#6").val($(document).height());
			$("#7").val($(document.body).height());
			$("#8").val($(document.body).outerHeight(true));
		}
	});
</script>
</html>