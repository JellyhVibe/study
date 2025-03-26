<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/js/lib/jquery-3.7.1.min.js"></script>

<table border="1">
	<tr>
		<th>이름</th>
		<th>나이</th>
		<th>연락처</th>
		<th>국적</th>
		<th>성별</th>
		<th>사용여부</th>
	</tr>
	<c:forEach items="${dataList}" var="dataListView" >
		<tr>
			<td><c:out value="${dataListView.name}" /></td>
			<td><c:out value="${dataListView.age}" /></td>
			<td><span class="phone"><c:out value="${dataListView.phone}" /></span></td>
			<td><c:out value="${dataListView.nation}" /></td>
			<td>
				<c:choose>
					<c:when test="${dataListView.gender == 'F'}" >여성</c:when>
					<c:otherwise>남성</c:otherwise>
				</c:choose>
			</td>
			<td>
				<c:choose>
					<c:when test="${dataListView.userYn == 'Y'}" >사용</c:when>
					<c:otherwise>미사용</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</c:forEach>
</table>

<script type="text/javascript">
$(document).ready(function() {
    $(".phone").each(function() {
        var phone = $(this).text();
        var formattedPhone = phone.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
        $(this).text(formattedPhone);
    });
});
</script>

</body>
</html>