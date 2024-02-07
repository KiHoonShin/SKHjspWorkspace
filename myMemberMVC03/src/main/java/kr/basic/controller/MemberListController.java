package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.Member;
import kr.basic.model.MemberDAO;

import java.io.IOException;
import java.util.ArrayList;

public class MemberListController implements Controller  {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ArrayList<Member> list = MemberDAO.getInstance().getMemberList();
		
		request.setAttribute("list", list);
		
		return "memberList";
	}
	
	
	

}
