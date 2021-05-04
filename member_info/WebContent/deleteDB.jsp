<%@page import="DB.MemberDB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	
    	 //db전담하는 부품에서 db에 넣어달라고 할 예정.
    	 MemberDB db = new MemberDB();
    	 db.delete(id);  //DAO delete 메서드 사용
    %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
탈퇴가 완료되었습니다.
<a href="logout.jsp"><button type="button">로그인페이지로</button></a>&nbsp;&nbsp;
       
     
</body>
</html>