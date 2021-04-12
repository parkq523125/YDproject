<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/style2.css" type="test/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	//호출시 첫 화면
	$(function() {
		//등록 버튼
		//수정,삭제 버튼
		//상세보기
		//전체 리스트
		getSearchIntegrated(1);
	})//
	//전체 리스트
	function getSearchIntegrated(p) {
		//pageValue
		frm.page.value = p;
		//ajax
		$.ajax({
			url : "getSearchIntegrated",
			method : "get",
			data:{page:p},
			dataType : "json",
			success : function(datas) {
				//logic
				var tbl = $("<table>");
				$("#show").empty();
				$("#show").append(tbl);
				var titles = ['상품명','옵션이름','가격','지역','대표이미지','추가이미지','조회','삭제'];
				var thead=$("<thead>");
				//titles
				var tr = $("<tr>");
				for(title of titles){
					var th = $("<th>");
					th.append(title);
					tr.append(th);
				}//end of title
				thead.append(tr);
				tbl.append(thead);
				//contents
				var item = datas.list;
				var tbody = $("<tbody>");
				$(item).each(function(i,idx){
					var tr = makeTr(item,i);
					console.log(tr)
					tbody.appendTo(tr);
					tbl.append(tbody);
				})//end of each
				
				//paging버튼
				$("#paging").empty();
				var totalRecord = datas.paging.totalRecord;
				var lastPage = datas.paging.lastPage;
				var page = datas.paging.page;
				var pageSize = datas.paging.pageSize;
				var endPage = datas.paging.endPage;
				var startPage = datas.paging.startPage;
				if (startPage > 1) {
					$("#paging").append( "<a href='#' onclick='getSearchIntegrated(" + (startPage - 1) + ")'>" + "&laquo;" + "</a>");
				}
				for (i = startPage; i <= endPage; i++) {
					$("#paging").append( "<a href='#' onclick='getSearchIntegrated(" + (i) + ")'>" + i + "</a>");
				}
				if (lastPage > endPage) {
					$("#paging").append( "<a href='#' onclick='getSearchIntegrated(" + (endPage + 1) + ")'>" + "&raquo;" + "</a>");
				}
			}//end of success
		})//end of ajax
	}//end of getSearchAdmin
	
	//Tr 생성
	function makeTr(item,i){
		return
			$("<tr>")
			.append($("<td>").html(item[i].name))
			.append($("<td>").html(item[i].optionName))
			.append($("<td>").html(item[i].price))
			.append($("<td>").html(item[i].location))
			.append($("<td>").html(item[i].image1))
			.append($("<td>").html(item[i].image2))
			.append($("<td>").html("<button id=\'btnSelect\'>조회</button>"))
			.append($("<td>").html("<button id=\'btnDelete\'>삭제</button>"))
			.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.seq));
	}//end of makeTr
</script>
</head>
<body>
	<div id="content">
		<h4>게시글 관리 페이지</h4>
		<form id="frm" name="frm">
			<input type="hidden" name="page" value="1">			
		</form>
		<div id="show"></div>
		<div id="paging"></div>
	</div>
</body>
</html>