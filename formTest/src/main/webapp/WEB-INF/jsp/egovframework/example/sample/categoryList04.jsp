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

	/* 목록으로가기 버튼 */
	$("#categoryListBtn").click(function(){
		location.href = '/categoryList.do';
	});
	
	/* 등록버튼처리 */
	$("#categoryListCreateBtn").click(function(){
		$("#categoryListForm").submit();
	});
	
	/* validation */
	$("#category_nm").on("input", function(){
		var inputValue = $(this).val();
		var cleanValue = inputValue.replace(/\s/g,'');
		$(this).val(cleanValue);
		
		if(inputValue !== cleanValue){
			$(this).fucus();
		}
	});

});

</script>

<form id="categoryListForm" name="categoryListForm" action="/insertCategoryList.do" method="POST">
	<table border="1">
		<tr>
			<td>카테고리명</td>
			<td><input type="text" name="category_nm" /></td>
		</tr>
	</table>
	<input id="categoryListCreateBtn" type="submit" value="등록" />
</form>

<input id="categoryListBtn" type="button" value="목록" />
	
</body>
</html>
