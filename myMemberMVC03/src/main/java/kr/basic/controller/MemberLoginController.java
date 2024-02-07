package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpSession;


public class MemberLoginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		if(request.getParameter("id") == null) {
			return "memberLogin";
		}
		
		String pw = request.getParameter("pw");
		String dbPw = MemberDAO.getInstance().checkMemberId(id);
		
		String ctx = request.getContextPath();
		
		if(dbPw == null || dbPw.equals(pw) == false) {
			return "redirect:"+ctx+"/memberLogin.do";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("log", MemberDAO.getInstance().getMemberNo(id));
			return "redirect:"+ctx+"/memberList.do";
		}
	}
       
	

}
