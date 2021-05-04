<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입</h2>
		<hr color="red">
		 <!--form태그는 값을 입력하고 싶을 때 사용  -->
		 <!-- 입력값들은 모두 form들어가야 한다.  -->
		 <!--action: 입력값을 받아서 처리하는 다음페이지를 지정 -->
		 <form action="회원가입DB.jsp"><!--자바로 서버를 만드는곳  -->
		 아이디: <input name="id"><br><!-- jsp = java server page -->
		 비밀번호: <input name="pw" type="password"><br>
		 이름: <input name="name"><br>
		 연락처: 
		 <select name="company"><!--name: 넘어갈때 이게 무엇인가를 알려주는 key역할 -->
		 	<option value="SKT">SKT</option>  <!-- 이것을 가장 많이 활용 -->
		 	<option value="LG">LG	</option> <!-- select name과 option value을 통해 세 개 중 하나 선택할 수 있게, 선택한 것을 "company"로 넣음 -->
		 	<option value="KT">KT</option>        
		 </select>
		 <input name="tel"><br>
		 생년월일: <input name="birth"><br>
		 이메일: <input name="email"><br>
		 카드: <select name="card">
		 	<option value="hana">하나</option>
		 	<option value="kb">KB국민</option>
		 	<option value="sinhan">신한</option>
		 	<option value="lotte">롯데</option>
		 	<option value="bc">BC</option>
		 	<option value="nh">NH농협</option>
		 	<option value="sam">삼성</option>
		 	<option value="hyun">현대</option>
		 </select>
		 카드번호: <input name="cardnum"><br>
		 <button type="submit">가입 완료</button>
		 <!--네트워크를 위한 것: 랜선, ip, 포트   -->
		 </form>
       <!-- DB전담, 데이터전달묶는 가방 .java필요, 가방이 많으면 그것보다 큰 묶음-->
       
       
       
</body>
</html>