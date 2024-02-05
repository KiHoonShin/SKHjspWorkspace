package kr.basic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class MemberLogOutController
 */
@WebServlet("/memberLogout.do")
public class MemberLogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	
		HttpSession session = req.getSession();
		session.setAttribute("log", null);
		RequestDispatcher rd = req.getRequestDispatcher("/memberList.do");
		rd.forward(req, res);
		
	}

	
	
}
