<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertQuestion1" method="post">
	
		제목: <input id="title" name="title"> <br>
		내용: <input id="content" name="content"> <br>
		글쓴이: <input id="writer" name="writer"> <br>
		MId: <input id="memberId" name="memberId" > <br> 
		<h7>로그인해서 세션가져오기</h7> <br>
		
	 	<!-- 받는사람<input type="hidden" id="toPerson" name="toPerson" value="admin"> <br> -->
	
		<button type="submit">고객센터문의접수</button>
		
		
		
	</form>
</body>
</html>