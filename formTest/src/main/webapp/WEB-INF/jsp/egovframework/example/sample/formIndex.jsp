<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="/js/lib/jquery-3.7.1.min.js"></script>
<script>

	$(document).ready(function(){

		$("#CreateBtn").click(function(){
			location.href = '/testForm.do';
		});

		$("#EditBtn").click(function(){
			var edit = 'edit';
			location.href = '/testForm.do?ModifyBtn=' + edit;
		});
		
		$("#list01").click(function(){
			location.href = '/list01.do';
		});

		$("#list02").click(function(){
			location.href = '/list02.do';
		});
		
		$("#categoryList").click(function(){
			location.href = '/categoryList.do'
		});

	});
	
</script>

<ul>
	<li>
		<input id="CreateBtn" type="button" value="등록" />
	</li>
	<li>
		<input id="EditBtn" type="button" value="수정" />
	</li>
	<li>
		<input id="list01" type="button" value="list01" />
	</li>
	<li>
		<input id="list02" type="button" value="list02" />
	</li>
	<li>
		<input id="categoryList" type="button" value="categoryList" />
	</li>

</ul>

</body>
</html>