<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*, qwe.*" %>
<%@ include file="connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입확인</title>
</head>
<body>
<%
	String id = request.getParameter("jid");
	String name = request.getParameter("jname");
	String nickName = request.getParameter("jnickname");
	String pw = request.getParameter("jpw");
	String cpw = request.getParameter("jcpw");
	String isJoin = request.getParameter("isJoin");
	PreparedStatement state = null;
	 if(isJoin != null && isJoin.equals("true")){
		 if(!pw.equals(cpw)){
			 %>
		        <script>
		            alert("비밀번호를 확인해 주세요");
		            history.go(-1);
		        </script>
		    <%
		    return;
		 }
		 try{
		 	String sql = "insert into member(id, pass, name , nickname) values(?,?,?,?)";
		 	state = conn.prepareStatement(sql);
		 	state.setString(1, id);
			state.setString(2, pw);
			state.setString(3, name);
			state.setString(4, nickName);
			int rowsAffected = state.executeUpdate();
			
			
		 }catch(Exception e){
			 e.getMessage();
		 }
		%>
        <p>회원 정보가 확인되었습니다.</p>
        <p>ID: <%= id %></p>
        <p>Name: <%= name %></p>
        <p>Nickname: <%= nickName %></p>
        <p>Password: <%= pw %></p>
        <p>Confirm Password: <%= cpw %></p>
        
        
<%
    }else{
    	%>
        <script>
            alert("아이디 중복체크 해주세요");
            history.go(-1);
        </script>
    <%
    }
%>
</body>
</html>
