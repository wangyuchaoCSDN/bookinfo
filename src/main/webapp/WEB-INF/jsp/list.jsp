<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<head>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.6.0.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
		function deleteoid(aid){
			con = confirm("确定删除吗?");
			if(con){
				location.href="${pageContext.request.contextPath }/delete?aid="+aid;
			}
		}
	</script>
</head>
<body>
<h3 align="center">欢迎张三登录</h3>
<table border="1px" cellspacing="0px" align="center">
	<tr>
		<td  colspan="12">
			<a href="${pageContext.request.contextPath }/addfindTname">新增资产</a>
		</td>
	</tr>
	<tr>
		<td>资产编号</td>
		<td>资产类型</td>
		<td>资产名称</td>
		<td>数量</td>
		<td>单位</td>
		<td>单价金额</td>
		<td>总计</td>
		<td>采购日期</td>
		<td>登记日期</td>
		<td>使用状态</td>
		<td>使用者</td>
		<td>操作</td>
	</tr>
	<c:forEach items="${lists}" var="a" varStatus="s">
	<tr>
		<td>${a.aid}</td>
		<td>${a.tname}</td>
		<td>${a.aname}</td>
		<td>${a.acount}</td>
		<td>${a.aunit}</td>
		<td>${a.amoney}</td>
		<td>${a.acount*a.amoney}</td>
		<td>
				${a.caitime}
			<%--<fmt:formatDate value="${a.caitime}" pattern="yyyy-MM-dd"/>--%>
		</td>
		<td>
				${a.dengtime}
			<%--<fmt:formatDate value="${a.dengtime}" pattern="yyyy-MM-dd"/>--%>
		</td>
		<td>
			<c:if test="${a.astate=='1' }">
				正常
			</c:if>
			<c:if test="${a.astate=='0' }">
				报废
			</c:if>
		</td>
		<td>${a.auser}</td>
		<td>
			<a href="javascript:void(0);" onclick="deleteoid(${a.aid})">删除</a>
			<a href="findById?aid=${a.aid}">修改</a>
		</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="12">
			<a href="${pageContext.request.contextPath }/findAll?pageNum=1">首页</a>
			<!-- 判断是否有上一页 -->
			<c:if test="${pageNum>'1'&&pageNum<=totalPages }">
			<a href="${pageContext.request.contextPath }/findAll?pageNum=${pageNum-1 }">上一页</a>
			</c:if>
			<a>第 ${pageNum } 页	共 ${totalPages }页	共${pageNums }条记录</a>
			<!-- 遍历导航页 -->
			<c:forEach  begin="1" end="${totalPages }" var="i">
			<a href="${pageContext.request.contextPath }/findAll?pageNum=${i}">${i}</a>
			</c:forEach>
			<c:if test="${pageNum>='1'&&pageNum<totalPages }">
			<a href="${pageContext.request.contextPath }/findAll?pageNum=${pageNum+1 }">下一页</a>
			</c:if>
			<a href="${pageContext.request.contextPath }/findAll?pageNum=${totalPages}">尾页</a>
	</tr>
</table>
</body>
</html>