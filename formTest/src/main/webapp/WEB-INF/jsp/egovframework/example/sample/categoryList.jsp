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
		location.href = '/categoryList02.do';
	});
});

</script>

<input id="categoryListCreate" type="button" value="등록" />

<table border="1">
	<tr>
		<th>카테고리ID</th>
		<th>카테고리 명</th>
	</tr>
  		<c:forEach items="${categoryList}" var="category" >
			<tr>
				<td><c:out value="${category.category_id}" /></td>
				<td><c:out value="${category.category_nm}" /></td>
			</tr>
		</c:forEach>
</table>

	
</body>
</html>
