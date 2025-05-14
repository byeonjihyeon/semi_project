package kr.or.iei.member.model.service;

import java.sql.Connection;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.dao.MemberDao;
import kr.or.iei.member.model.vo.Member;

public class MemberService {
	private MemberDao dao;
	
	public MemberService() {
		dao = new MemberDao();
	}

	public Member loginChk(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		Member loginM = dao.loginChk(conn, m);
		JDBCTemplate.close(conn);
		return loginM;
	}

	public int idDuplChk(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		int cnt = dao.idDuplChk(conn, userId);
		
		JDBCTemplate.close(conn);
		return cnt;
	}

	
	
}
