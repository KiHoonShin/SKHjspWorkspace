<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "./header.jsp" %>


 <h1> 메인 : 현재 상태  <br> <%= dao.getLog()== -1 ? "로그아웃" : dao.getLogMember().getName()%> </h1>
<%@ include file = "./footer.jsp" %>