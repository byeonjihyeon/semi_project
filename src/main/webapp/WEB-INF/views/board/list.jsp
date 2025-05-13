<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL 라이브러리 선언 -->            
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판</title>
</head>
<body>

	  <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	  	<div class="container">
		 <jsp:include page="/WEB-INF/views/common/sidemenuBoard.jsp"></jsp:include>
			 <main class="content">
	         	<section class='section notice-list-wrap'>
				<div class='page-title'>자유 게시판</div>
				<br><br>
					<div class='list-header'>
						<a class='btn-point write-btn' href='/board/writeFrm'>작성하기(일반)</a> <%-- 나중에 로그인시 보이게 추가해줄것 --%>
					</div>
				<br>
				<div class='list-content'>
					<table class='tbl tbl-hover'>
						<tr>
							<th style='width:40%;'>제목</th>
							<th style='width:15%;'>작성자</th>
							<th style='width:20%;'>작성일</th>
							<th style='width:10%;'>조회수</th>
							<th style='width:10%;'>추천수</th>
						</tr>
						<c:forEach var="board" items="${boardList}">
							<tr>
								<td class='boardTitle'><a href='/board/view?boardNo=${board.boardId}&updChk=true'>${board.boardTitle}</a></td>
								<td>${board.memberId}</td>
								<td>${board.createdAt}</td>
								<td>${board.viewCount}</td>
								<td>${board.boardLikeCount}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div id='pageNavi'>${pageNavi}</div>
			</section>
	         </main>
		</div>     
</body>
</html>