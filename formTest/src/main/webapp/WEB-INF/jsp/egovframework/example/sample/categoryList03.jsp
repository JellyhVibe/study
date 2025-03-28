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
	$("#categoryListBtn").click(function(){
		location.href = '/categoryList.do';
	});
	
	$("#categoryListEditBtn").click(function(){
		$("#categoryListForm").submit();
	});
	
	$("#categoryListDeleteBtn").click(function(){
		var confirm = confirm("삭제하시겠습니까?");
		if(confirm){
			$("#categoryListForm").attr("action", "/deleteCategory.do");
			$("#categoryListForm").submit();
		}
	});
});

</script>

<form id="categoryListForm" name="categoryListForm" method="POST" action="/updateCategory.do">
	<table border="1">
		<tr>
			<td>카테고리명</td>
			<td><input type="text" name="category_nm"></td>
		</tr>
	</table>
</form>

<input id="categoryListDeleteBtn" type="button" value="삭제" />
<input id="categoryListEditBtn" type="button" value="수정" />
<input id="categoryListBtn" type="button" value="목록" />

</body>
</html>
