<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/js/lib/jquery-3.7.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){

	$("#categoryListCreate").click(function(){
		location.href = '/categoryListCreate.do';
	});
});

</script>

<input id="categoryListCreate" type="button" value="등록" />

<form id="categoryTable" neme="categoryTable" method="POST">
	<table border="1">
		<tr>
			<th>카테고리ID</th>
			<th>카테고리 명</th>
		</tr>
<%--   		<c:foreach var="category" items="${categoryList}">
			<tr>
				<td>${category}</td>
			</tr>
		</c:foreach>
 --%>	</table>
</form>
	
</body>
</html>
