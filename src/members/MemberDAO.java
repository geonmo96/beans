package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private Connection con;
	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "jsp";
	private String pw = "1234";
	
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> memberList() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			con = DriverManager.getConnection(url, id, pw);
		
			String sql = "select * from members";
		
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pwd"));
				member.setName(rs.getString("name"));
				member.setAddr(rs.getString("addr"));
				member.setTel(rs.getString("tel"));
				list.add(member);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int loginCheck(String inputId, String inputPw) {
		try {
			con = DriverManager.getConnection(url, id, pw);
			String sql = "select id, pwd from members where id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, inputId);
			rs = ps.executeQuery();
			while(rs.next()) {
				if(inputId.equals(rs.getString("id"))) {
					if(inputPw.equals(rs.getString("pwd"))) {
						//로그인
						return 1;
					} else {
						//비밀번호 틀림
						return 0;
					}
				} else {
					// 아이디 없음
					return -1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public MemberDTO searchOne(String searchId) {
		MemberDTO member = new MemberDTO();
		try {
			
			con = DriverManager.getConnection(url, id, pw);
			String sql = "select * from members where id = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, searchId);
			rs = ps.executeQuery();
			while(rs.next()) {
				member.setId(searchId);
				member.setName(rs.getString("name"));
				member.setPw(rs.getString("pwd"));
				member.setAddr(rs.getString("addr"));
				member.setTel(rs.getString("tel"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}
}
