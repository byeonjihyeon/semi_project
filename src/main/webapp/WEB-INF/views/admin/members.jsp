<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>

</head>
<body>
 <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
  	<div class="container">
		<jsp:include page="/WEB-INF/views/common/sidemenuAdmin.jsp"></jsp:include>
			<main class="content">
	        	<section class='section notice-list-wrap'>
				<div class='page-title'>회원 관리</div>
					<div class='list-content'>
						<table class='adminTbl tbl-hover'>
							<tr>
								<th style='width:15%;'>회원 아이디</th>
								<th style='width:15%;'>이름</th>
								<th style='width:15%;'>등급</th>
								<th style='width:15%;'>이메일</th>
								<th style='width:15%;'>가입일</th>
								<th style='width:15%'>관리</th>
							</tr>
							
								<tr>
									<td>abc123</td>
									<td>아무개</td>
									<td>새싹</td>
									<td>abc@naver.com</td>
									<td>2025-05-13</td>
									<td>
										<button type='submit'>조회</button>
										<button>삭제</button>
									</td>
								</tr>
							
						</table>
					</div>
				<div id='pageNavi'>${pageNavi}</div>
			</section>	
	   		</main>
	</div>  
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>   
</body>
</html>