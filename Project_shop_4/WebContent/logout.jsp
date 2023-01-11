<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션초기화
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그아웃</title>
<script>
	alert("로그아웃 되었습니다.\n이용해 주셔서 감사합니다.");
	location.href = "shop.jsp";
	
</script>
</head>
</html>