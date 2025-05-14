<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/css/login.css"> <!-- CSS 파일 연결 -->  
 <script src:https://code.jquery.com/jquery-3.7.1.min.js></script> <!-- jquery 구글 -->
<!DOCTYPE html>

 <style>
	td {
	width: 100px;
	}
</style>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<div class="login-container">
      
      <form action="#" method="POST" class="login-form" onsubmit="return validateForm()">
          <table>
          	<tr style="text-align: center;">
          		<td colspan="3" style="padding-bottom: 30px">아이디 찾기</td>
          	</tr>
          	<tr>
          		<td style="padding-bottom: 15px;">
          			<label for="searchId" >아이디 입력 : </label>
          		</td>
          		<td>
          			<input type="text" id="searchId" name="searchId">
          			<p id="idMsg"></p>
          		</td>
          	</tr>
          	<tr>
          		<td style="padding-bottom: 15px;">
          			<label for="searchIdEmail">이메일 입력 : </label>
          		</td>
          		<td style="padding-right: 15px;">
          		<input type="email" id="searchIdEmail" name="searchIdEamil">
          		<p id="emailMsg"></p>
          		</td>
          		<td>
          		<button type="submit">인증번호 요청</button>
          		</td>
          	</tr>
          	<tr>
          	<td style="padding-bottom: 15px;">
          		<input type="hidden" name="verification code" id="verification code" value="인증번호6자리 입력">
          		<p></p>
          	</td>
          	</tr>
          	<tr>
          		<td colspan="3" style="text-align: center; ">
          			<input type="submit" name="searchId-btn" id="searchId-btn" value="확인" >
          		</td>
          	</tr>
          </table>
      </form>
  </div>
  <%-- API 공부 이후 작성 --%>>
</body>
</html>