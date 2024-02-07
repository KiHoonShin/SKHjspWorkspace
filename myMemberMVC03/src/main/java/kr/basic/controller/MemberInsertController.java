package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
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

public class MemberInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("id") == null) {
			return "memberInsert";
		}
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		Member m = new Member(0, id, pass, name, age, email, phone);
		
		int cnt = MemberDAO.getInstance().addOneMember(m);
		String ctx = request.getContextPath();
		if(cnt > 0) {
			return "redirect:"+ctx+"/memberList.do";
		} else {
			throw new ServletException("not insert");	
		}
	}

}
