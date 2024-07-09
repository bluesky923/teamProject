<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="connection.jsp" %>
<% 
	String id = request.getParameter("uid");
	String pw = request.getParameter("upw");
	
	PreparedStatement state = null;
	ResultSet rs = null;
	String sql = "select * from member where id = ? and pass = ?";
	state = conn.prepareStatement(sql);
	state.setString(1, id);
	state.setString(2, pw);
	
	rs = state.executeQuery();
%>