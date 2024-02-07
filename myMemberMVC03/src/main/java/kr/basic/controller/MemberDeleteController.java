package kr.basic.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

import java.io.IOException;

public class MemberDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ctx = request.getContextPath();
		int cnt = MemberDAO.getInstance().deleteOneMember(request.getParameter("id"));
		
		if(cnt > 0) {
			return "redirect:"+ctx+"/memberList.do";
		} else {
			throw new ServletException("not delete");	
		}
	}

	
	

}
