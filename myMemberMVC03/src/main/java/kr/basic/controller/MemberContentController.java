package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.model.Member;
import kr.basic.model.MemberDAO;

import java.io.IOException;


public class MemberContentController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num = -1;
		String ctx = request.getContextPath();
		if(request.getParameter("num") == null) {
			return "redirect:"+ctx+"/memberList.do";
		}
		
		num = Integer.parseInt(request.getParameter("num"));
		Member member =	MemberDAO.getInstance().getMemberByNum(num);
		
		request.setAttribute("member", member);
		
		return "memberContent";
	}
	
}
