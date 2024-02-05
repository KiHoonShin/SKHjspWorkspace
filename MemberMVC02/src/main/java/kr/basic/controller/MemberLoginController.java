package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

import java.io.IOException;
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
		if(check == 0) {
			res.sendRedirect(ctx + "/memberList.do");
			return;
		}
		System.out.println("id = " + id + ", pw = " + pw);
		System.out.println("check = " + check);
		HttpSession session = req.getSession();
		session.setAttribute("log", check);
//		req.setAttribute("log", check);
		RequestDispatcher rd = req.getRequestDispatcher("/memberList.do");
		rd.forward(req, res);
		//res.sendRedirect(ctx + "/memberList.do");
		
	}
       
	

}
