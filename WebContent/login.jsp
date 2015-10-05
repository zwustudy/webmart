<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" charset="utf-8" type="text/css" href="<%=path%>/css/login.css"/>
		<title>测试</title>
		<script type="text/javascript" src="<%=path%>/js/common/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/common/newproperty_common.js"></script>
	</head>

	<body>
		<div id= "container">
				<form id="form" method="post" action="<%=path%>/test/login.action">
				<div align="center">
					<table id="login_table" border="1">
						<tr class="header">
							<th colspan="2" id="table_title">
								测试
							</th>
						</tr>
						<tr class = "tr_line">
							<td class="password_username">
								用户名：
							</td>
						<td>
							<input class="input_password_username" name="username" type="text" id="username" value=""
								maxlength="20" onkeydown="if(event.keyCode == 13) $('#password').focus();" />
						</td>
					</tr>
					<tr class = "tr_line">
						<td class="password_username">
							密 码：
						</td>
						<td>
							<input class="input_password_username" name="password" type="password" id="password" value=""
								maxlength="20" onkeydown="if(event.keyCode == 13) $('#form').submit();"/>
						</td>
					</tr>
					<tr class="header">
						<td colspan="2"><input name="login" id="login_button" type="button" value="登录" onclick="$('#form').submit();"></input>
						</td>
					</tr>
				</table>
			</div>
		</form>

			</div>
	</body>
</html>
