
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    session.getAttribute("id");
    String id = (String)session.getAttribute("id");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
안녕하세요.<br>
<a href="logout.jsp">로그아웃</a><br>
<a href="update.jsp">개인정보수정</a>
<a href="delete.jsp">회원탈퇴</a>
</body>
</html>