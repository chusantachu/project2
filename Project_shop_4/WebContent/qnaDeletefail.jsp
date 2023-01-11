<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int qNum = (int)request.getAttribute("qNum");
%>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인 실패</title>
<script>
	alert("비밀번호가 일치하지 않습니다.");
	location.href="admin?type=admin-qnaDetail&qNum="+<%=qNum%>;
</script>
</head>
<body>

</body>
</html>