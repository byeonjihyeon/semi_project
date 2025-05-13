<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/css/default.css"> <!-- CSS 파일 연결 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script> <!-- jQuery 연결 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL 라이브러리 선언 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	header a, footer a {
	 text-decoration: none;
	 color: #555;
	}
</style>
</head>
<body>
 <header class="header">
       <div class="header-container">
         <div class="header-left"> 
           <nav class="main-menu">
             <a id='logo' href="#">MUTGYM LOGO</a>
             <div class="menu-item">헬스
               <div class="submenu">
                 <a href="#">헬스장 찾기</a>
                 <a href="#">헬스장 등록</a>
                 <a href="#">헬스장 관리</a>
               </div>
             </div>
             <div class="menu-item">게시판
               <div class="submenu">
                 <a href="#">공지사항</a>
                 <a href="/board/list?reqPage=1">자유게시판</a>
               </div>
             </div>
             	<%--관리자인 경우에만 보이는 관리자페이지--%>
             	 <c:if test="${not empty sessionScope.loginAdmin}">
             	 	<div class="menu-item">관리자
              		 <div class="submenu">
		                 <a href="/admin/members?page=1">회원 관리</a>
		                 <a href="#">헬스장 관리</a>
		                 <a href="#">헬스장 신청내역</a>
		                 <a href="#">일대일 문의내역</a>
              		 </div>
            	 	</div>
             	 </c:if>
           </nav>
         </div>
         <div class="header-right">
           <nav class="main-menu">
           <c:choose>
				<c:when test='${empty sessionScope.loginMember}'>
             <div class="menu-item"><a href='/member/loginFrm'>로그인</a>
              <%-- 서브 메뉴 만들시 사용할
               <div class="submenu">
                 <a href="#">회원가입</a>
                 <a href="#">내 정보</a>
               </div>
               --%>
             </div>
             <div class="menu-item"><a href='#'>회원가입</a>
             	<%-- 서브 메뉴 만들시 사용할 
               <div class="submenu">
                 <a href="#">문의하기</a>
                 <a href="#">FAQ</a>
               </div>
               --%>
             </div>
             </c:when>
				<c:otherwise>
             <div class="menu-item"><a href='#'>마이페이지</a>
              <%-- 서브 메뉴 만들시 사용할
               <div class="submenu">
                 <a href="#">회원가입</a>
                 <a href="#">내 정보</a>
               </div>
               --%>
             </div>
             <div class="menu-item"><a href='/member/logOutF'>로그아웃</a>
             	<%-- 서브 메뉴 만들시 사용할 
               <div class="submenu">
                 <a href="#">문의하기</a>
                 <a href="#">FAQ</a>
               </div>
               --%>
             </div>
            	 </c:otherwise>
			</c:choose>
           </nav>
         </div>
       </div>
     </header>
</body>
</html>