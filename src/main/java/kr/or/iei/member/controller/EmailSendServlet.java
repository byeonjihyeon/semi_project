package kr.or.iei.member.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmailSendServlet
 */
@WebServlet("/emailSend")
public class EmailSendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailSendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 인코딩 - 필터
		// 값 추출
		String receiver = request.getParameter("receiver");

		String authenticationNumber = authenticationNumber();
		
		String emailTitle = "다짐 인증번호 요청";
		String emailContent = "인증번호는 다음과 같습니다." + authenticationNumber;
		
		
		// 1. 환경 설정 정보
		Properties prop = new Properties();					// 이메일 전송에 필요한 설정값들을 담는 객체 (SMTP 서버 주소, 포트, 인증 여부 등)
		prop.put("mail.smtp.host", "smtp.naver.com");		// 사용 SMTP 서버명
		prop.put("mail.smtp.port", 465);					// 사용 SMTP 포트
		prop.put("mail.smtp.auth", "true");					// 인증 수행
		prop.put("mail.smtp.ssl.enable", "true");			// 보안 설정 적용
		prop.put("mail.smtp.ssl.trust", "smtp.naver.com");	
		
		// 2. 세션 설정 및 인증 정보 설정
		Session session = Session.getDefaultInstance(prop, new Authenticator() {	//java mail 세션 생성.
		protected PasswordAuthentication getPasswordAuthentication() {	//인증정보를 담는 클래스, 인증 정보를 제공하는 메소드 생성
			return new PasswordAuthentication("wnsguddl000@naver.com","B1JSQ5K8E8WY");	// 아이디와 비밀번호 전송!
		}
		});	
		
		// 3. 이메일 관련 정보 설정 셋팅
		MimeMessage msg = new MimeMessage(session);	// 이메일 관련 정보에 인증 정보 셋팅
		
		try {
			msg.setSentDate(new Date());	// 이메일을 보낸 날짜와 시간 설정
			
			msg.setFrom(new InternetAddress("wnsguddl000@naver.com","다짐"));		// 보내는 사람 지정 ! 보내는 사람 = wnsguddl000@naver.com이라는 이메일을 가지고 있으며, 이름은 '다짐'!
			
			InternetAddress to = new InternetAddress(receiver);	// 받는 사람 이메일 주소
			
			msg.setRecipient(Message.RecipientType.TO, to);		// to는 받는 사람 이메일 주소, setRecipientType는 받는 사람 한명 설정 
			
			msg.setSubject(emailTitle);
			
			msg.setContent(emailContent, "text/html; charset=utf-8");
			
			Transport.send(msg);
			
			response.getWriter().print(msg);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private String authenticationNumber() {
	    int code = (int)(Math.random() * 900000) + 100000; // 100000~999999
	    return String.valueOf(code);
	}
}
