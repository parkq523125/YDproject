<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getSearchBoardCategory199</title>
<style>
	input.write{
			padding:10px;
			width:100px;
			border-radius:5px;
			border:none;
			color: white;
			background-color:#3CB4FF;
		}
		input.back{
			padding:10px;
			width:100px;
			border-radius:5px;
			border:none;
			color: white;
			background-color:#FFD732;
		}

    /* 게시판 리스트 목록 */
.sub_news,.sub_news th,.sub_news td{border:0}

.sub_news{width:700px;border-bottom:1px solid #999;color:black;font-size:17px;table-layout:fixed;}

.sub_news th{padding:10px 0 10px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color: white ;color:black;font-weight:800;line-height:20px;vertical-align:top}
.sub_news td{padding:15px 0 15px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}

/* //게시판 리스트 목록 */

 tr.th{
 	text-align: center;
 	font-size: 17px;
 }
</style>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="getSearchBoardCategory199?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
</head>
<body>
<div style="width:50%; right: 300px;">
<jsp:include page="../user/myPageSideBar.jsp" />
<div id="contents">
<h3>내가 쓴글</h3><br>
<table class="sub_news" border="1" style="cursor:pointer;">



<thead>
<tr class="th">
<th width="60">글번호</th>
<th width="400">제목</th>
<th width="200">날짜</th>
<th width="100">글쓴이</th>
<th width="120">조회수</th>

</tr>
</thead>
<tbody>
<c:forEach var="board" items="${board}">
<tr onclick="location.href='getBoard?boardNumber=${board.boardNumber}'">
<td>${board.boardNumber}</td>
<td >${board.title}</td>
<td>${board.calendar}</td>
<td>${board.writer}</td>
<td >${board.views}</td>
</tr>
</c:forEach>

</tbody>
</table>
<br>
</div>
<!-- 
<input class="write" type = "button" value="글쓰기" onclick="location.href='insertBoard'">
 -->
<div >
	<div  style="display: block; text-align: center; cursor:pointer;" >		
		<c:if test="${paging.startPage != 1 }">
			<a href="getSearchBoardCategory199?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="getSearchBoardCategory199?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="getSearchBoardCategory199?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>  
</div>    
</div>
</body>
</html>