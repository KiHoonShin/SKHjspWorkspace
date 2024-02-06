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


@WebServlet("/memberLogin.do")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String ctx = req.getContextPath();
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		int check = MemberDAO.getInstance().checkLogin(id, pw);
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html");
		PrintWriter writer = res.getWriter();
		if(check == 0) {
			writer.println("<script> alert('로그인 실패');"
					+ "location.href='"+ctx+"/memberList.do'"
					+ "</script>");
			
			writer.close();
			
			return;
		}
		System.out.println("id = " + id + ", pw = " + pw);
		System.out.println("check = " + check);
		HttpSession session = req.getSession();
		session.setAttribute("log", check);
//		req.setAttribute("log", check);
		writer.println("<script> alert('로그인 성공');"
				+ "location.href='"+ctx+"/memberList.do'"
				+ "</script>");
		writer.close();
//		RequestDispatcher rd = req.getRequestDispatcher("/memberList.do");
//		rd.forward(req, res);
		//res.sendRedirect(ctx + "/memberList.do");
		
	}
       
	

}
