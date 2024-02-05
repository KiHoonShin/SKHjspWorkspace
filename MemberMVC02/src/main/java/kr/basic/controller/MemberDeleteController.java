package kr.basic.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

import java.io.IOException;

@WebServlet("/memberDelete.do")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String ctx = req.getContextPath();
		String num = req.getParameter("num");
		if(num == null) {
			res.sendRedirect(ctx+"/memberList.do");
			return;
		}
		
		MemberDAO.getInstance().deleteOneMember(Integer.parseInt(num));
		
		res.sendRedirect(ctx +"/memberList.do");
	}
       

}
