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
		location.href = '/categoryList04.do';
	});
/* 	
 	${"#categoryEdit"}.click(function(){
		${"#editForm"}.atrr("action", "/categoryList05.do").submit();
	});
 */ 	
/* 	${"#categoryEdit"}.click(function(){
		var categoryId = '${category.category_id}';
		var categoryNm = '${category.category_nm}';
		location.href = '/categoryList05.do?category_id=' + categoryId + '&category_nm=' + categoryNm; 
	});
 */
});

</script>

<input id="categoryListCreate" type="button" value="등록" />

<table border="1">
	<tr>
		<th>카테고리ID</th>
		<th>카테고리명</th>
	</tr>
<%-- 	<form id="editForm" name="editForm" method="POST">
		<input type="hidden" value="${category_id}">
		<input type="hidden" value="${category_nm}">
	</form>
 --%>	

	<a href="/categoryList05.do">		
  		<c:forEach items="${categoryList}" var="category">
			<tr>
				<td><c:out value="${category.category_id}" /></td>
				<td><c:out value="${category.category_nm}" /></td>
			</tr>
		</c:forEach>
	</a>
</table>
	
</body>
</html>
