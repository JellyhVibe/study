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
		$.ajax({
			url: '/getList.do',
			type: 'GET',
			dataType: 'json',
			success: function(data){
				console.log(data);
				
				var dataDetail="";
				
				$.each(data, function(index, value){
					dataDetail += "<tr>";
					dataDetail += "<td>" + value.name + "</td>";
					dataDetail += "<td>" + value.age + "</td>";
					let PhoneNumber = value.phone.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
					dataDetail += "<td>" + PhoneNumber + "</td>";
					dataDetail += "<td>" + value.nation + "</td>";
					dataDetail += "<td>" + (value.gender === "F" ? "여성" : value.gender === "M" ? "남성" : "") + "</td>";
					dataDetail += "<td>" + (value.userYn === "Y" ? "사용" : value.userYn === "N" ? "미사용" : "") + "</td>";
					dataDetail += "</tr>";
				});
			$("#tableBody").append(dataDetail);
			}
		});
	});
	
  
 </script>
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>연락처</th>
				<th>국적</th>
				<th>성별</th>
				<th>사용여부</th>
			</tr>
		</thead>
		<tbody id="tableBody">
		</tbody>
	</table>
</body>
</html>