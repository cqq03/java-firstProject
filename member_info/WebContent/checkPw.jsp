<%@page import="DB.MemberDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String company = request.getParameter("company");
	String tel = request.getParameter("tel");
	
    //비밀번호 찾기에서 가져온 데이터들 변수에 저장
	MemberDB db = new MemberDB();
   
    //멤버db생성
    boolean result = db.check3(id, name, company, tel);
    //비밀번호찾기를 위해 입력한 데이터가 맞았나 틀렸나만 중요하고, 그 결과 나온 비밀번호를 보여주지 않을 것이므로 아이디 찾기랑 다르게 boolean으로
    

%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% if (result) {%>              <!-- 위에서 check에 성공할 시   -->
 		 <form action="newPw.jsp">                  
 	 아이디: <input name = "id" value="<%= id  %>"readonly="readonly"><br>  <!-- 위에서 저장된 id를 이쪽으로 출력, readonly로 수정 못하고 읽을 수만 있게 -->
	 새 비밀번호: <input name="pw1" type="password"><br>
 	 새 비밀번호 확인: <input name="pw2" type="password"><br>  <!-- 다음 페이지에서 2 정보를 비교하기 위해 다른 변수로 입력 -->
 	 <button type="submit">설정 완료</button>
  </form><% } else {%>  <!--위에서 체크에 실패할 시  -->
 	 비밀번호 찾기에 실패하셨습니다.<br>
 	 <a href="login.jsp">로그인 페이지로</a><br>
 	 <a href="findPw">비밀번호 찾기 페이지로</a>
 	                                            
 	 
 <% } 
  %>

</body>
</html>