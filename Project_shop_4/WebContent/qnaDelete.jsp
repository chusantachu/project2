<%@page import="com.mystudy.Project_shop.vo.AdminQnaVO"%>
<%@page import="com.mystudy.Project_shop.dao.AdminQnaDAO"%>
<%@page import="com.mystudy.Project_shop.dao.AdminAnswerDAO"%>
<%@page import="com.mystudy.Project_shop.vo.AdminAnswerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String cPage = request.getParameter("cPage");
	int qNum = Integer.parseInt(request.getParameter("qNum"));
	AdminQnaVO vo = AdminQnaDAO.selectQnAVO(qNum);
	request.setAttribute("vo", vo);
	request.setAttribute("cPage", cPage);
	String id = (String) session.getAttribute("loginUserId");
%>
<html>
<head>
<meta charset="UTF-8">
<title>답변삭제</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style>
	div { text-align: center; }
	table { display:inline-block;}
	div p a:hover {
	 color: red;
	 text-decoration: none;
	}
</style>
</head>
<body>
<%@ include file="common/shopMain.jspf" %>
<div>
	<form action="admin?type=qnaDelete" method="post">
	<p><a href="admin?type=admin-qnaDetail&qNum=${vo.qNum}&cPage=${cPage}" style="color: black;">이전 페이지로 돌아가려면 여기를 클릭하세요.</a></p>
		<table>
			<tr>
				<td>
					<input type="password" name="pwd" placeholder="INSERT PASSWORD" size="14">
					<input type="submit" value="삭제">
					<input type="hidden" name="qNum" value= "${vo.qNum}">
					<input type="hidden" name="id" value= "<%=id%>">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>