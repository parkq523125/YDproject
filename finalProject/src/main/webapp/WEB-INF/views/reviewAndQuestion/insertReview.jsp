<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 구매평 등록</h3>
<form action="insertReview" method="post">
<input type="hidden" id="memberId" name="memberId" value="${reservation.memberId }">
<input type="hidden" id="probisNumber" name="probisNumber" value="${reservation.bisNumber }">
<input type="text" id="reservationNumber" name="reservationNumber" value="${reservation.reservationNumber }">
<table border="1">
<tr>
<th>작성자</th>
<td><input type="text" id="writer" name="writer" value="${reservation.name }" readonly="readonly"></td>
</tr>
<tr>
<th>옵션명</th>
<td><input type="text" value="${reservation.optionName }" readonly="readonly"></td>
</tr>
<tr>
<th>예약날짜</th>
<td><input type="text" value="${reservation.reservationDate }" readonly="readonly"></td>
</tr>
<tr>
<th>제목</th>
<td><input type="text" id="title" name="title"></td>
</tr>
<tr>
<th>내용</th>
<td><input type="text" id="content" name="content"></td>
</tr>
</table>
<button type="submit">등록하기</button>
<button type="button" onclick="window.close()">취소</button>
</form>
</body>
</html>