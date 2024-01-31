package member;

import java.util.ArrayList;

public class MemberDAO {

	private int log = -1;
	
	String[] idList = {"admin","qwer","abcd","hello"};
	String[] pwList = {"admin","1111","2222","3333"};
	String[] nameList = {"관리자","이만수","박영희","이수민"};
	String[] genderList = {"남성","남성","여성","여성"};
	
	ArrayList<Member> member;
	
	public MemberDAO(){
		member = new ArrayList<Member>();
		setMember();
	}
	
	private void setMember() {
		
		for(int i = 0; i < idList.length; i+=1) {
			Member m = new Member(idList[i],pwList[i],nameList[i],genderList[i]);
			member.add(m);
		}
	}

	public void addMember(String id, String pw, String name, String gender) {
		Member m = new Member(id,pw,name,gender);
		member.add(m);
	}
	
	public boolean checkLogin(String id, String pw) {
		int idx = 0;
		for(Member m : member) {
			if(m.getId().equals(id) && m.getPw().equals(pw)) {
				log = idx;
				return true;
			}
			idx +=1;
		}
		return false;
	}
	
	public void updateMember(String name, String gender) {
		Member m = member.get(log);
		m.setName(name);
		m.setGender(gender);
	}
	
	public Member getLogMember() {
		return member.get(log);
	}
	
	public Member getOneMember(int idx) {
		return member.get(idx);
	}
	
	public int getListCount() {
		return member.size();
	}
	
	public Member deleteMember(int idx) {
		return member.remove(idx);
	}
	
	public int getLog() {
		return log;
	}

	public void setLog(int log) {
		this.log = log;
	}
	
	
	
}
