package member;

import java.util.ArrayList;

public class MemberDAO {

	private int log = -1;
	
	String[] idList = {"qwer","abcd","hello","admin"};
	String[] pwList = {"1111","2222","3333","admin"};
	String[] nameList = {"이만수","박영희","이수민","관리자"};
	String[] genderList = {"남성","여성","여성","남성"};
	
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

	public int getLog() {
		return log;
	}

	public void setLog(int log) {
		this.log = log;
	}
	
	
	
}
