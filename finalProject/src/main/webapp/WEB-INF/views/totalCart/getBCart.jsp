<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 리스트</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		//ajax 연결
		$.ajax({
			url : "getBCart",
			method : "post",
			data : {
				memberId : 1
			},
			dataType : "json",
			success : function(response) {
				console.log(response)
				//상품명
				var td = $("<td>").text(response.name);
				$("#tr").append(td);
				//가격
				$("#tr").append($("<td>").html(response.price));
				//제품옵션
				$("#tr").append($("<td>").html(response.optionName));
			}
		})//end of ajax
	})//end of function
</script>
</head>
<body>
	<strong> 장바구니</strong>
	<small>장바구니에 담아놓은 상품은 3개월 동안 보관 후 자동 삭제됩니다.</small>
	<table>
		<tr>
			<th>상품정보</th>
			<th>상품옵션</th>
			<th>상품금액</th>
			<th>배송비</th>
			<th>합계금액</th>
		</tr>
		<tr id="tr"></tr>
	</table>
	<button type="button" id="shopping">쇼핑계속하기</button>
	<button type="button" id="pay">주문결제하기</button>
</body>
</html>