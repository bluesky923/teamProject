<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connection.jsp"%>
<%
	String name = request.getParameter("jname");
	String nickname = request.getParameter("jnickname");
	String id  = request.getParameter("jid");
	String pw = request.getParameter("jpw");
	String cpw = request.getParameter("jcpw");
	
	String sql = "insert into member(id,pass,name,nickname) values(?,?,?,?)";
	PreparedStatement pstmt = null;
	try{
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, nickname);
	
		int result = pstmt.executeUpdate();
		
		if(result == 1){
			out.println("가입 완료");
		}else{
			out.println("가입 실패");
		}
	
	}catch(SQLException e){
		out.println("<h3>DB연결 오류</h3>");
		out.println("<h3>"+e.toString()+"</h3>");
	}finally{
		if(pstmt != null) pstmt.close();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 요청 처리</h1>
</body>
</html>