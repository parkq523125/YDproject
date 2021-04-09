<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원의 구매내역 상세리스트 조회</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<table border="1">
	<tr>
		<th>예약번호</th>
		<td>${reservation.reservationNumber}</td>
	</tr>
	<tr>
		<th>옵션명</th>
		<td>${reservation.optionName}</td>
	</tr>
	<tr>
		<th>예약날짜</th>
		<td>${reservation.reservationDate}</td>
	</tr>
	<tr>
		<th>예약시간</th>
		<td>${reservation.reservationTime}</td>
	</tr>
	<tr>
		<th>예약상태</th>
		<td>${reservation.reservationState}</td>
	</tr>
</table>
<br>
<button type="button" onclick="window.close()">닫기</button>
</body>
</html>