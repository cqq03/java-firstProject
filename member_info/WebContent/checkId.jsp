<%@page import="DB.MemberVO"%>
<%@page import="DB.MemberDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   
    String name = request.getParameter("name");
    String company = request.getParameter("company");  
    String tel = request.getParameter("tel");
    //아이디 찾기에서 등록한 정보들 가지고 와서 변수에 넣기
    MemberDB db = new MemberDB();
   //DAO 변수 생성
    
   
    String id = db.check2(name, company, tel);
   	//DAO에 있는 check2 기능 (select id from movie where name = ?, company = ?, tel =?)
    // 단순 찾기 성공, 실패가 아닌 아이디 자체를 보여주는 목적이므로 String id에 내용 저장
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>아이디 찾기 결과</h2>
 <% if (id == null) {//위에서 체크 id에 실패했을 시 , 입력한 이름, 통신사, 전화번호가 db에 저장된 것과 달라 id를 못할 시%> 
 		아이디 찾기에 실패하셨습니다.<br>
	<a href="login.jsp">로그인 페이지로</a><br>
	<a href="findId.jsp">아이디 찾기 페이지로</a>
 <% } else { //id 체크에 성공%> 
 	아이디 찾기에 성공하셨습니다.<br>
	당신의 아이디는: <%= id %><br><!-- check를 통해 가져온 id값 주기 -->
	<a href="login.jsp">로그인 페이지로</a>
 <% } %> 
</body>
</html>