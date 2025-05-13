package kr.or.iei.admin.model.dao;

import java.sql.Connection;
import java.sql.JDBCType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.or.iei.admin.model.vo.Admin;
import kr.or.iei.common.JDBCTemplate;

public class AdminDao {

	public Admin adminLogin(Connection conn, String adminId, String adminPw) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		Admin loginAdmin = null;
		
		//회원(관리자포함) 테이블과 관리자별 업무테이블 조인하여 select
		String query = "select * from tbl_member join tbl_admin_job using (member_id) where member_id =? and member_pw =?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, adminId);
			pstmt.setString(2, adminPw);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginAdmin = new Admin();
				
				loginAdmin.setMemberId(adminId);
				loginAdmin.setMemberPw(adminPw);
				loginAdmin.setMemberAddr(rset.getString("member_addr"));
				loginAdmin.setMemberDate(rset.getString("enrolldate"));
				loginAdmin.setMemberEmail(rset.getString("member_email"));
				loginAdmin.setMemberGrade(rset.getString("member_grade"));
				loginAdmin.setMemberName(rset.getString("member_name"));
				loginAdmin.setMemberNickname(rset.getString("member_nickname"));
				loginAdmin.setMemberPhone(rset.getString("member_phone"));
				loginAdmin.setReportedCnt(rset.getInt("reported_cnt"));
				loginAdmin.setJobCode(rset.getString("job_code"));
				loginAdmin.setUrl(rset.getString("url"));
				loginAdmin.setSelYN("sel_yn");
				loginAdmin.setInsYN("ins_yn");
				loginAdmin.setUpdYN("upd_yn");
				loginAdmin.setDelYN("del_yn");
				loginAdmin.setRegDate("reg_date");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return loginAdmin;
	}
	
}
