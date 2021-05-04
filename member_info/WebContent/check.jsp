<%@page import="DB.MemberDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //미리 객체를 생성해서 제공하고 있는 객체: 빌트인 객체(내장된 객체)
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
     
    MemberDB db = new MemberDB();
    boolean result = db.check(id, pw);
   
    if(result) {//boolean일 경우 비교 연산자 필요없음 그것만으로 판별가능
    	 //로그인이 성공을 한 경우, id를 사이트내 여러 페이지에서 쓸 수 있도록 설정
        //세션이 유지되는 동안 쓸 수 있도록 해야함	
    
    session.setAttribute("id", id);//값) //session은 브라우저 다 끌때 나가짐
	response.sendRedirect("movie_main.jsp");   //세션 설정 후 바로 메인페이지로 이동
    }         //result = false이면(입력한 아이디, 비밀번호가 db에 저장된 것과 다를 때) 밑의 페이지 출력 밑에서 나오는 로그인 결과는 무조건 false
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 결과는 <%= result %><br>
<a href="login.jsp">로그인 페이지로</a>


</body>
</html>