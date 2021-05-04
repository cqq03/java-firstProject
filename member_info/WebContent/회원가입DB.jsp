<%@page import="DB.MemberVO"%>
<%@page import="DB.MemberDB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");              //회원가입때 입력한 정보들을 가져워서 각각 변수에 넣기
    	String pw = request.getParameter("pw");
    	String name = request.getParameter("name");
    	String tel = request.getParameter("tel");
    	String company = request.getParameter("company");
    	String birth = request.getParameter("birth");
    	
    	
    	String email = request.getParameter("email");
    	
    	String card = request.getParameter("card");
    	String cardnum = request.getParameter("cardnum");
    	 //db전담하는 부품에서 db에 넣어달라고 할 예정.
    	 	//1. 가방을 만들어라!
           	MemberVO bag = new MemberVO();   
           	//2. 가방에 넣어라!=>set메서드이용!
           	bag.setId(id);                      //위에서 변수에 넣은 정보들을 가방에 넣기
           	bag.setPw(pw);
           	bag.setName(name);
           	bag.setCompany(company);
           	bag.setTel(tel);
           	bag.setBirth(birth);
           	bag.setEmail(email);
           	bag.setCard(card);
           	bag.setCardnum(cardnum);
            //db전담하는 부품에서 db에 넣어달라고 할 예정.
        MemberDB db = new MemberDB();
           	//db.create(id, pw, name, ... 대신에 bag으로); 
        db.create(bag); //Memberdb에 있는 create 메서드 사용
    	  //회원가입 완료 후 밑의 사이트 띄우고 로그인 페이지로 갈 수 있게
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원가입이 완료되었습니다.
<a href="login.jsp">로그인 페이지로</a>      
       
     
</body>
</html>