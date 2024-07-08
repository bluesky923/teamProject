<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body {
			text-align: center;
	}
	.join {
			display: inline-block;
			text-align: left;
			border: 1px solid #ccc;
			padding: 20px;
	}
	.join>form>input{
		width: 400px;
		height: 40px;
		box-sizing: border-box;
		border : 1px solid gray;
		outline: none;
		padding:0px 15px;
		margin: 5px 20px;
		font-size: 16px;
		
	}
	.join>form>span{
		font-size: 16px;
		margin: 0px 20px;
	}
	.id input[type="text"] {
		width: 300px;
		height: 40px;
		box-sizing: border-box;
		border : 1px solid gray;
		outline: none;
		padding:0px 15px;
		margin: 5px 20px;
		font-size: 16px;
	}
	.id input[type="button"] {
		width: 70px;
		height: 40px;
		box-sizing: border-box;
		border : 1px solid gray;
		outline: none;
		padding:0px 5px;
		font-size: 14px;
	}
	
</style>
<body>
	<h1 style="text-align: center;">회원가입</h1>
	<div class="join">
		<form action="joincheck.jsp" method="post">
			<span>아이디는 8자 이상의 영어와 숫자만 사용해주세요</span>
			<div class="id">
				<input type="text" placeholder="아이디" name="jid" tabindex="3" autocomplete="off" required>
				<input type="button" value="중복확인" onclick="return idcheck(this.form)"><br/>
			</div>
			<span>이름은 2~4글자로 작성해주세요. <br/></span>
			<input type="text" placeholder="이름" name="jname" tabindex="1" autofocus="autofocus" autocomplete="off" required> <br/>
			<span>닉네임은 3~5자의 한글만 사용해주세요<br/></span>
			<input type="text" placeholder="닉네임" name="jnickname" tabindex="2" autocomplete="off" required><br/>
			<span>비밀번호는 8자 이상의 영어와 숫자만 사용해주세요<br/></span>
			<input type="password" placeholder="비밀번호" name="jpw" tabindex="4" autocomplete="off" required><br/>
			<span>비밀번호를 확인해 주세요<br/></span>
			<input type="password" placeholder="비밀번호 확인" name="jcpw" tabindex="5" autocomplete="off" required><br/>
			<br/>
			<input type="submit" value="회원가입">
		</form>
	</div>
</body>
<script type="text/javascript">
	function idcheck(frm) {
		frm.action = 'check.jsp';
		frm.submit();
		return false;
	}
</script>
</html>