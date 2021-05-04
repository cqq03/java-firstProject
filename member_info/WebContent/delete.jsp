<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%  session.getAttribute("id");                    //세션 id 끌고와
	String id = (String)session.getAttribute("id");   //스트링 변수에 넣기
    %>
	<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원탈퇴</h2>
		<hr color="red">
		 <form action="deleteDB.jsp">
		 아이디: <input name="id" value="<%= id %>" readonly="readonly"><br>
		 		<button type="submit">탈퇴 완료</button>
		   <!-- id 값 넣기+ 읽기전용 -->
			 </form>
       
       
       
</body>
</html>