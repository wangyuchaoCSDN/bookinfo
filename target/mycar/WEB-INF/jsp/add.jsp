<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>

<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/findAdd" method="post">
	<table border="1px" cellspacing="0" align="center" style="text-align: center;">
		<tr><th colspan="2">添加</th></tr>
		<tr>
			<td>资产类型:</td>
			<td>
				<select name="tid">
					<c:forEach items="${tnamefind}" var="t" varStatus="s">
						<option value="${t.tid}">${t.tname}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td>资产名称:</td>
			<td>
				<input type="text" name="aname"  />
			</td>
		</tr>
		<tr>
			<td>资产个数:</td>
			<td>
				<input type="text" name="acount"  />
			</td>
		</tr>
		<tr>
			<td>单位:</td>
			<td>
				<input type="text" name="aunit"  />
			</td>
		</tr>
		<tr>
			<td>单价:</td>
			<td>
				<input type="text" name="amoney"  />
			</td>
		</tr>
		<tr>
			<td>采购时间:</td>
			<td>
				<input type="text" name="caitime"  />
			</td>
		</tr>
		<tr>
			<td>登记日期:</td>
			<td>
				<input type="text" name="dengtime"  />
			</td>
		</tr>
		<tr>
			<td>使用状态</td>
			<td>
				<input type="radio" name="astate" value="1" checked />正常
				<input type="radio" name="astate" value="0" />作废
			</td>
		</tr>
		<tr>
			<td>使用者:</td>
			<td>
				<input name="auser" type="text"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="添加"/>
				<input type="reset" value="重置"/>
			</td>
		</tr>
	</table>
	
</form>
</body>
</html>