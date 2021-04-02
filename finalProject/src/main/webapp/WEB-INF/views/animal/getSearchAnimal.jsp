<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이펫수첩 반려동물 리스트</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<table border="1">
		<thead>
		<tr>
			<th>마이펫</th>
			<th>이름(애칭)</th>
			<th>견종</th>
			<th>성별</th>
			<th>생일</th>
			<th>관리</th>
			<th>생애주기 의료수첩</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${animal }" var="ani">
		<tr>
			<td>이미지</td>
			<td>${ani.name}</td>
			<td>${ani.gender}</td>
			<td>${ani.kind}</td>
			<td>${ani.birth}</td>
			<td><input type="button" value="정보수정" onclick="location.href='updateAnimal?animalNumber='+${ani.animalNumber}"></td>
			<td><input type="button" value="수첩보기" onclick="/"></td>	
				<tr>
		</c:forEach>	
	</table>
	<input type="button" value="반려견 추가등록" onclick="location.href='insertAnimal?memberId='+'user2'">
</body>
</html>