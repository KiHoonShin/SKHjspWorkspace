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

/**
 * Servlet implementation class MemberListController
 */
@WebServlet("/memberList.do")
public class MemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//System.out.println("log test= "+req.getAttribute("log"));
		System.out.println("log test= "+req.getAttribute("log"));
		System.out.println("test~~~~~~~~!!!!1");
		ArrayList<Member> list = MemberDAO.getInstance().getMemberList();
		req.setAttribute("list", list);
		String ctx = req.getContextPath();

//		res.sendRedirect(ctx+"/member/memberList.jsp");
		RequestDispatcher rd = req.getRequestDispatcher("member/memberList.jsp");
		rd.forward(req, res);
		
	}
	
	
	

}
