<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 작성</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>	
		<div class="container">
		 <jsp:include page="/WEB-INF/views/common/sidemenuBoard.jsp"></jsp:include>
			 <main class="content">
	         	<section class='section notice-write-wrap'>
				<div class='page-title'>게시판 작성</div>
				<form action='/notice/write'
						method='post' <%--첨부파일 업로드시, method는 모조건 post로 지정하고, enctype은 multipart로 지정해야함. --%>
						enctype='multipart/form-data'>
						<%-- tbl_notice의 notice_writer(작성자) 컬럼의 값은 회원 번호! --%>
						<input type='hidden' name='noticeWriter' value='${loginMember.memberNo}'>
						<table class='tbl'>
							<tr>
								<th>제목</th>
								<td colspan='3'>
									<div class='input-item'>
										<input type='text' name='noticeTitle'>
									</div>
								</td>
							</tr>
							<tr>
								<th style='width:10%'>작성자</th>
								<td style='width:40%'>
									<span>${loginMember.memberId}</span>
								</td>
								<th style='width:10%'>첨부파일</th>
								<td style='width:40%'>
									<input type='file' name='uploadFile'>
								</td>
							</tr>
							<tr>
								<td colspan='4'>
									<div class='input-item'>
										<textarea name='noticeContent'></textarea>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan='4'>
									<button type='submit' class='btn-primary lg'>작성하기</button>
								</td>
							</tr>
						</table>
				</form>
			</section>
	         </main>
		</div>     
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>	

</body>
</html>