<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/login" method="post">
		<table align="center" cellspacing="0" border="1px">
			<tr>
				<td colspan="2" align="center">欢迎登录<br></td>
				
			</tr>
			<tr>
				<td>
					用户名
				</td>
				<td>
					<input type="text" name="username">
				</td>
			</tr>
			<tr>
				<td>
					密码
				</td>
				<td>
					<input type="password" name="password">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="登录">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>