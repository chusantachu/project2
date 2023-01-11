<%@page import="com.mystudy.Project_shop.vo.AdminReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="com.mystudy.Project_shop.dao.CommunityShopDAO"%>
<%@page import="com.mystudy.Project_shop.vo.productVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글관리</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>	
<%@ include file="common/shopMain.jspf" %>
<div style="text-align: center;">
	<form action="controller?type=board_qna&id=${loginUserId}" method="post" enctype="multipart/form-data">
		<button type="submit" class="btn btn-dark">Q & A</button>
<!-- 		<input type="hidden" class="btn btn-dark" value="board_qna" name="type"> -->
	</form>
	<br>
	<form action="controller?type=board_review&id=${loginUserId}" method="post" enctype="multipart/form-data">
		<button type="submit" class="btn btn-dark">REVIEW</button>
<!-- 		<input type="hidden" class="btn btn-dark" value="board_review" name="type"> -->
	</form>
</div>
</body>
</html>