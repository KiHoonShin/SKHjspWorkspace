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

/**
 * Servlet implementation class MemberInsertController
 */
@WebServlet("/memberInsert.do")
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pass");
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		Member m = new Member(0, id, pw, name, age, email, phone);
		MemberDAO.getInstance().addOneMember(m);
		
		RequestDispatcher rd = req.getRequestDispatcher("/memberList.do");
		rd.forward(req, res);
		
	}

}
