<%@page import="DB.MemberVO"%>
<%@page import="DB.MemberDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
       String pw1 = request.getParameter("pw1");
       String pw2 = request.getParameter("pw2");
       String id = request.getParameter("id");
       MemberDB db = new MemberDB();
      //pw1, pw2입력값 가져오고 전 페이지에서 읽기전용으로 고정된 id를 입력값으로 처리해 가져오기
      
        
   
       %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%   if (pw1.equals(pw2)) { 
   String pw = pw1; 
   //새 비밀번호와 새 비밀번호 확인이 같을 시, pw를 pw1과 같게
   db.pwUpdate(pw, id);   //수정하려는 pw를 db에서 업데이트(수정)
%>   비밀번호 수정이 완료되었습니다.<br>
   <a href="login.jsp">로그인 페이지로</a>
   <% } else {//두 비밀번호가 다를 시 일치 하지 않는다는 말 보여주기 %>


   두 비밀번호가 일치하지 않습니다.<br>
   <a href="login.jsp">로그인 페이지로</a>
   <% } %>
</body>
</html>