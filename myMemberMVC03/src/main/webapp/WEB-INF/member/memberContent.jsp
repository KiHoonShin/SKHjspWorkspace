<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../header.jsp" %> 


 <c:if test = "${member eq null}"> 
  <h1 class="py-3"> 일치하는 회원이 없습니다 </h1>
 </c:if>
 
 <c:if test = "${member ne null}">
<h1 class="py-3" > ${member.name} 회원의 상세보기 </h1>
<form action="${ctx}/memberUpdate.do?num=${member.num}" method="post">
<input type="hidden" name="num" value="${member.num}"/>
<table class='table table-bordered'>
  <tr>
    <td>번호</td>
    <td class="left"> ${member.num}</td>
  </tr>
   <tr>
    <td>아이디</td>
    <td class="left">${member.id}</td>
  </tr>
   <tr>
    <td>비밀번호</td>
    <td class="left">${member.pass}</td>
  </tr>  
    <tr>
    <td>이름</td>
    <td class="left">${member.name}</td>
  </tr> 
  <tr>
    <td>나이</td>
    <td><input class="col-12"  type="text" name="age" value="${member.age}"/></td>
  </tr> 
     <tr>
    <td>이메일</td>
    <td><input class="col-12"  type="text" name="email" value="${member.email}"/></td>
  </tr>
  <tr>
    <td>전화번호</td>
    <td><input class="col-12"  type="text" name="phone" value="${member.phone}"/></td>
  </tr> 

  <tr>
    <td colspan="2" align="center">
       <input type="submit" value="수정하기" class='col-5 btn btn-primary'/>
    </td>
  </tr>
</table>
</form>
</c:if>