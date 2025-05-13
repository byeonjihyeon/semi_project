package kr.or.iei.admin.model.service;

import java.sql.Connection;

import kr.or.iei.admin.model.dao.AdminDao;
import kr.or.iei.admin.model.vo.Admin;
import kr.or.iei.common.JDBCTemplate;

public class AdminService {
	private AdminDao dao;

	public AdminService() {
		dao = new AdminDao();
	}

	//관리자 로그인 (모든 정보 조회)
	public Admin adminLogin(String adminId, String adminPw) {
		Connection conn = JDBCTemplate.getConnection();
		Admin loginAdmin = dao.adminLogin(conn, adminId, adminPw);
		JDBCTemplate.close(conn);
		return loginAdmin;
	}

}
