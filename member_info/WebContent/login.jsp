<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인</h2>
	<hr color="red">
	<%  
		if (session.getAttribute("id") == null) {  //로그인이 되지 않아 아이디가 세션에 등록되어 있지 않을 시 나오는 로그인창  
	%>                                             <!--  getAttribute는 setAttribute에서 id설정한 아이디가 있을 시 id 세션 설정 --> 
	<form action="check.jsp">           <!-- check.jsp로 데이터 전달 --> 

		아이디: <input name="id"><br>  <!-- "id"에 입력값 저장  -->
		비밀번호: <input name="pw" type="password"><br>  <!-- type="password"는 비밀번호 입력한 것 안보이게 -->
		<button type="submit">로그인 완료</button>   <!-- 로그인 버튼으로 check.jsp로 이동 -->
		<br>
	</form>
	<%
		} else {  // 로그인이 된 상태, 아이디가 세션에 이미 등록되어 있을때는 바로 메인페이지로
	%>
	<%
		response.sendRedirect("movie_main.jsp");
	%>
	<%
		}                     //밑에 아이디찾기, 비밀번호, 회원가입은 각각 해당하는 파일, 링크로 이동
	%>
	<button type="button" onclick="location.href='findId.jsp'">아이디 찾기</button>  
	<button type="button" onclick="location.href='findPw.jsp'">비밀번호
		찾기</button>
	<br>
	<button type="button" onclick="location.href='create.jsp'">회원가입</button>


</body>
</html>