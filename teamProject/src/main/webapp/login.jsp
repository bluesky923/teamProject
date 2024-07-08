<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		text-align: center;
	}
	.login {
		display: inline-block;
		text-align: left;
		border: 1px solid #ccc;
		padding: 20px;
	}
	
	.login1>input{
		width: 400px;
		height: 40px;
		box-sizing: border-box;
		border : 1px solid gray;
		outline: none;
		padding:0px 15px;
		font-size: 16px;
	}
	
	.login2 a{
		font-size: 14px;
	}
</style>
</head>
<body>
	<header>
		header
		<br/>
		알아서 만들러 주세용
	</header>
	<br/>
	<div class="login">
		<div style="text-align: center;">
			<h1>
				포털 이미지
			</h1>
		</div>
		<div>
			<form action="logincheck.jsp" method="post" class="login1">
				<input type="text" placeholder="아이디" name="uid" tabindex="1" autofocus="autofocus" autocomplete="off" required><br/>
				<input type="password" placeholder="비밀번호" name="upw" tabindex="2" required><br/>
				<input type="submit" value="로그인"
				style="color: white; background-color: black; border: 0px;">
			<br/>
			<label>
				<input type="checkbox" name="remember"> 아이디 저장
			</label>
			</form>
			<div class="login2">
				<a href="index.jsp">아이디 찾기</a> |
				<a href="index.jsp">비밀번호 찾기</a> |
				<a href="join.jsp">회원가입</a>
			</div>
		</div>
	</div>
	<br/>
	<br/>
	<hr/>
	<footer>
		footer
		<br/>
		알아서 만들어 주세용
	</footer>
</body>
</html>
