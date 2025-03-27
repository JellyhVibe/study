<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<script src="/js/lib/jquery-3.7.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		//목록버튼 페이지이동
		$("#listPage").click(function(){
			location.href = '/formIndex.do';
		});
		
		var ModifyBtn = "${ModifyBtn}";

		//등록, 수정 버튼 공통처리
		function formSubmitAction(actionType){
			$("#ModifyBtn").val(actionType);
			
			//validation
			var formName = $("#formName").val();
			var phone = $("#phone").val();
			var address = $("#address").val();
			var email = $("#email").val();
			var message = $("#message").val();
			
	 		if(formName == ''){
				alert('이름을 입력해주세요');
	 			$("#formName").focus();
	 			return false;
	 		}

	 		
	 		if(phone == ''){
				alert('연락처를 입력해주세요');
	 			$("#phone").focus();
	 			return false;
	 		}
 	 		
	 		var phonePattern = /^(01[0-9]{1}-?[0-9]{4}-?[0-9]{4}|01[0-9]{8})$/;
	 		if(!phonePattern.test(phone)){
	 			alert('연락처를 정확히 입력해주세요');
	 			$("#phone").focus();
	 			return false;
	 		}

	 		if(address == ''){
	 			alert('주소를 입력해주세요');
	 			$("#address").focus();
	 			return false;
	 		}

	 		if(email == ''){
	 			alert('이메일을 입력해주세요');
	 			$("#email").focus();
	 			return false;
	 		}
	 		
			var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
			if(!emailPattern.test(email)){
				alert('이메일주소를 정확히 입력해주세요');
				$("#email").focus();
				return false;
			}
			
 			$("#testForm").attr("action", "/getFrom.do").submit();
		}
		
		//버튼 등록,수정버튼 show & hide
		if(ModifyBtn=="edit"){
 			$("#EditBtn").show(); // 수정버튼
 			$("#CreateBtn").hide(); // 등록버튼
		}else{
			$("#EditBtn").hide();
			$("#CreateBtn").show();
 		}

		//등록 form제출
		$("#CreateBtn").click(function(){
			formSubmitAction("create");
 		});
		
		//수정 form제출
		$("#EditBtn").click(function(){
			formSubmitAction("edit");
		});
		
		//공백문자제거
		$("#formName, #phone, #address, #email, #message").on("input", function(){
			var inputValue = $(this).val();
			var cleandValue = inputValue.replace(/\s/g, '');
			$(this).val(cleandValue);
			
			if(inputValue !== cleandValue){
				$(this).focus();
			}
		});
		
		$("#phone").on("input", function(){
			var phoneValue = $(this).val();
			var cleanedValue = phoneValue.replace(/[^0-9]/g, ''); //숫자만 입력가능
			$(this).val(cleanedValue);
		});
	});
	
	
</script>

<form id="testForm" name="testForm" method="POST">
	<table border="1" style="border-collapse: collapse;">
		<tr>
			<td>이름</td>
			<td colspan="3"><input type="text" value="${formName}" id="formName" name="formName" maxlength="5" /></td>
		</tr>
		<tr>
			<td>연락처</td>
			<td><input type="text" value="${phone}" id="phone" name="phone" maxlength="10" /></td>
			<td rowspan="2">주소</td>
			<td rowspan="2"><input type="text" value="${address}" id="address" name="address" maxlength="40" /></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" value="${email}" id="email" name="email" maxlength="20" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td colspan="3"><input type="textarea" value="${message}" id="message" name="message" maxlength="100" /></td>
		</tr>
	</table>
	 
	<input type="hidden" id="ModifyBtn" name="ModifyBtn" value=""/>
	<input type="button" id="CreateBtn" value="등록" style="margin-left:355px;" name="CreateBtn" />
	<input type="button" id="EditBtn" value="수정" style="margin-left:355px; display:none;" name="EditBtn" />
	<input type="button" id="listPage" value="목록" />
</form>

</body>
</html>