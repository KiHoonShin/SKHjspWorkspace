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

/**
 * Servlet implementation class MemberContentController
 */
@WebServlet("/memberContent.do")
public class MemberContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		System.out.println(session.getAttribute("log"));
		
//		int log = (int)session.getAttribute("log");
		String num = req.getParameter("num");
		Member member = null;
		if(num == null) {
			int log = (int)session.getAttribute("log");
			member = MemberDAO.getInstance().getMemberByNum(log);
		} else {
			int number = Integer.parseInt(num);
			member = MemberDAO.getInstance().getMemberByNum(number);
		}
		
		
//		Member member = MemberDAO.getInstance().getMemberByNum(num);
		session.setAttribute("member", member);
		RequestDispatcher rd = req.getRequestDispatcher("member/memberContent.jsp");
		rd.forward(req, res);
	}
	
}
