<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL 라이브러리 선언 -->            
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	<main class="content">
	<div class="page-title">공지사항</div>
	<div class="list-header">
		<a class="btn-point write-btn" href="/board/writerFrm">글쓰기()</a>
	</div>
	
	<div class="list-content">
	<table class="tbl tbl-hover">
	<tr>
		<th style="width:40%">번호</th>
		<th style="width:40%">제목</th>
		<th style="width:40%">작성자</th>
		<th style="width:40%">작성일자</th>
		<th style="width:40%">조회수</th>
		<th style="width:40%">추천수</th>
	</tr>
	</table>
	</div>
	</main>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>