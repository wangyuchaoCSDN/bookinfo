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
<form action="${pageContext.request.contextPath }/findUpdate" method="post">
	<table border="1px" cellspacing="0" align="center" style="text-align: center;">
		<input type="hidden" name="aid" value="${ass.aid}" />
		<tr><th colspan="2">修改</th></tr>
		<tr>
			<td>资产类型:</td>
			<td>
				<select name="tid">
					<c:forEach items="${asTnamefind}" var="t" varStatus="s">
						<c:if test="${t.tid==ass.tid}">
							<option value="${t.tid}" selected>${t.tname}</option>
						</c:if>
						<c:if test="${t.tid!=ass.tid}">
							<option value="${t.tid}">${t.tname}</option>
						</c:if>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td>资产名称:</td>
			<td>
				<input type="text" name="aname" value="${ass.aname}" />
			</td>
		</tr>
		<tr>
			<td>资产个数:</td>
			<td>
				<input type="text" name="acount"  value="${ass.acount}"/>
			</td>
		</tr>
		<tr>
			<td>单位:</td>
			<td>
				<input type="text" name="aunit" value="${ass.aunit}" />
			</td>
		</tr>
		<tr>
			<td>单价:</td>
			<td>
				<input type="text" name="amoney" value="${ass.amoney}" />
			</td>
		</tr>
		<tr>
			<td>采购时间:</td>
			<td>
				<input type="text" name="caitime" value="${ass.caitime}" />
			</td>
		</tr>
		<tr>
			<td>登记日期:</td>
			<td>
				<input type="text" name="dengtime" value="${ass.dengtime}" />
			</td>
		</tr>
		<tr>
			<td>使用状态</td>
			<td>
				<c:if test="${ass.astate==1}">
					<input type="radio" name="astate" value="1" checked />正常
					<input type="radio" name="astate" value="0" />作废
				</c:if>
				<c:if test="${ass.astate==0}">
					<input type="radio" name="astate" value="1"/>正常
					<input type="radio" name="astate" value="0" checked  />作废
				</c:if>
			</td>
		</tr>
		<tr>
			<td>使用者:</td>
			<td>
				<input name="auser" type="text" value="${ass.auser}"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="修改"/>
				<input type="reset" value="重置"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>