package kr.basic.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO2 {

	private MemberDAO2(){};
	
	static private MemberDAO2 instance;
	static public MemberDAO2 getInstance() {
		if(instance == null) {
			instance = new MemberDAO2();
		}
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	private void getConnect() {
		String url = "jdbc:mysql://localhost:3306/testdb?charaterEncoding=UTF-8&serverTimezone=UTC";
		String user = "root";
		String password = "1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Member2> getMemberList(){
		ArrayList<Member2> list = new ArrayList<Member2>();
		String sql = "select * from member";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				
				Member2 m = new Member2(num, id, pass, name, age, email, phone);
				list.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}
	
	public Member2 getMemberByNum(int num) {
		ArrayList<Member2> list = getMemberList();
		for(Member2 m : list) {
			if(m.getNum() == num) {
				return m;
			}
		}
		return null;
	}
	
	
	public int updateMember(int num, int age, String email, String phone) {
		int cnt = 0;
		String sql = "update member set age = ? , email = ? , phone = ? where num = ?";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, age);
			ps.setString(2, email);
			ps.setString(3, phone);
			ps.setInt(4, num);
			cnt = ps.executeUpdate();
		} catch(SQLException e) {
			
		}finally{
			 dbClose();
		}
		return cnt;
	}
	
	public int deleteMember(int num) {
		int cnt = 0;
		String sql = "delete from member where num = ?";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			cnt = ps.executeUpdate();
		} catch(SQLException e) {
			
		}finally{
			 dbClose();
		}
		
		return cnt;
	}
	
	public int addMember(Member2 m) {
		int cnt = 0;
		String sql = "insert into member value(null,?,?,?,?,?,?)";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, m.getId());
			ps.setString(2, m.getPass() );
			ps.setString(3, m.getName());
			ps.setInt(4, m.getAge());
			ps.setString(5, m.getEmail());
			ps.setString(6, m.getPhone());
			cnt = ps.executeUpdate();
		} catch(SQLException e) {
			
		}finally{
			 dbClose();
		}
		
		return cnt;
	}
	
	public int checkLogin(String id, String pw) {
		int num = 0;
		String sql = "select * from member where id = ? and pass = ?";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			rs = ps.executeQuery();
			if(rs.next()) {
				num = rs.getInt("num");
			}
			
			return num;
		} catch(SQLException e) {
			
		}finally{
			 dbClose();
		}
		return 0;
	}
	
	// 데이터베이스 연결 끊기
	private void dbClose() {
		  try { 
		   if(rs!=null) rs.close();
		   if(ps!=null) ps.close();
		   if(conn!=null) conn.close();
		  }catch(SQLException e) {
			  e.printStackTrace();
		  }
	}   
	
	
	
}
