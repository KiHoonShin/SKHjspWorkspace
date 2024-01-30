<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
ArrayList<String> sampleId= new ArrayList<String>(Arrays.asList("qwer","abcd","hello","admin"));
ArrayList<String> samplePw= new ArrayList<String>(Arrays.asList("1111","2222","3333","admin"));
ArrayList<String> sampleName = new ArrayList<String>(Arrays.asList("이만수","박영희","이수민","관리자"));
ArrayList<String> sampleGender = new ArrayList<String>(Arrays.asList("남성","여성","여성","남성"));
int log = -1;

session.setAttribute("idList", sampleId);
session.setAttribute("pwList", samplePw);
session.setAttribute("namelist", sampleName);
session.setAttribute("genderList", sampleGender);
session.setAttribute("log", log);

// 인덱스 실행시 main 실행되게 해라.
 response.sendRedirect("02_main.jsp");
%>