<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	System.out.println("id : " +  request.getParameter("id"));
	pageContext.setAttribute("id", request.getParameter("id"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<script type="text/javascript">
	function shopclick() {
		if("${id}" != ''){
			location.href = "../user/shoplogin.jsp?id=${id}";
			return;
		} else {
			location.href = "../user/shop.jsp";
		}
	}
	function main() {
		if("${id}" != ''){
			location.href = "../user/shoplogin.jsp?id=${id}";
			return;
		} else {
			location.href = "../user/shop.jsp";
		}
	}
</script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
	@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Anton&display=swap');
</style>
<link href="../css/main.css" rel="stylesheet" type="text/css" >
</head>
<body>
<%@ include file="../common/shopMain.jspf" %>

<div class="container mt-3" style="text-align: center;">
<!-- <h2 id="h2" style="text-align: center;">SELECT MENU</h2> -->
<br>
	<a class="btn btn-dark" href="bord?type=qna&id=${id }" >QnA</a>
	<a class="btn btn-dark" href="controller?type=qnaFinal" >Review</a>
</div>

</body>
</html>