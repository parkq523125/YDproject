<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고문의(관리자) 단건조회</title>

<style>
div.send {
	text-align: center;
}

input.send {
	padding: 10px;
	width: 100px;
	border-radius: 5px;
	border: none;
	background-color: #e7ab3c;
}

input.reset {
	padding: 10px;
	width: 100px;
	border-radius: 5px;
	border: none;
	color: white;
	background-color: #ff6347;
}

input.back {
	padding: 10px;
	width: 100px;
	border-radius: 5px;
	border: none;
	color: white;
	background-color: #778899;
}

table.table2 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	
	margin: 20px 10px;
}

table.table2 tr {
	width: 50px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;

}

table.table2 td {
	width: 20px;
	padding: 5px;
	vertical-align: top;
	
}
</style>
</head>
<body>
	<div id="contents">
		<h1>신고하기</h1>



		<table
			style="padding-top: 50px; align: center; width: 100%; border: 0; cellpadding: 2;">
			<tr>
				<td height="20" align="center" bgcolor="#e7ab3c"><font
					color="white"> ${getQuestion3.writer}님 의 상품문의 </font></td>
			</tr>


			<tr>
				<td bgcolor=white>
					<table class="table2">
						<tr>
							<td><input value="제 목  :"
								style="text-align: center; font-size: 20px; width: 100px; border: none; font-weight: 500;"
								readonly></td>
							<td><input type=text id="title" name="title" size="50"
								value="${getQuestion3.title}" style="border: none;" readonly></td>
							<td></td>
							<td><input value="아 이 디  :"
								style="font-size: 20px; text-align: left; width: 100px; border: none; font-weight: 500;"
								readonly></td>
							<td><input type=text id="memberId" name="memberId" size="10"
								value="${getQuestion3.memberId}" style="border: none;" readonly></td>
						<td>
						<hr>
						</td>
						</tr>
						<tr>
							<td><input value=""
								style="font-size: 20px; text-align: center; width: 100px; border: none; font-weight: 500;"
								readonly></td>
							<td>

								<div class="image" style="width: 100%;">
									<img id="image"
										src="resources/images/eventAndNotice2/${getQuestion3.image}">
								</div>
							</td>
						</tr>
						<tr>

							<td colspan="4"><textarea id="content" name="content"
									cols="70" rows="15" style="border: none;" readonly>${getQuestion3.content}</textarea></td>
						</tr>


					</table>


					<div class="send">
						<input class="send" type="button" value="답장하기"
							onclick="location.href='getQuestion3Ans?questionNumber=${getQuestion3.questionNumber}'">


					</div>





				</td>
			</tr>
		</table>
	</div>
</body>
</html>