
<%@page import="DB.MemberVO"%>
<%@page import="DB.MemberDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  	String id = request.getParameter("id");                 //회원정보수정 페이지에서 입력한 값들을 변수에 넣기
	String pw1 = request.getParameter("pw1");             //새 비밀번호와 새 비밀번호 확인은 둘이 같은지 확인이 필요하므로 pw1, pw2변수에 넣기
	String pw2 = request.getParameter("pw2");
	String company = request.getParameter("company");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String card = request.getParameter("card");
	String cardnum = request.getParameter("cardnum");
    
	MemberVO bag = new MemberVO();
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if (pw1.equals(pw2)) {           //pw1이 pw2와 같다면
	bag.setId(id);                  //가방에 개인정보수정에서 입력한 데이터들을 넣고
	bag.setPw(pw1);
	bag.setCompany(company);
	bag.setTel(tel);
	bag.setEmail(email);
	bag.setCard(card);
	bag.setCardnum(cardnum);
	MemberDB db = new MemberDB();           //db기능 사용할것이므로 선언하고
	db.update(bag);                       //업데이트!
	%> 	수정 완료되었습니다.<br>                        <!-- 수정하고 뜨는 화면 -->
	<a href="movie_main.jsp">메인 페이지로</a>
	<% }  else { %>        
		두 비밀번호가 다릅니다.<br>                       <!-- 두 비밀번호가 다를시 나타나는 화면, 수정실패 -->
	<a href="movie_main.jsp">메인 페이지로</a>
  <% 	} %>
	
 
</body>
</html>