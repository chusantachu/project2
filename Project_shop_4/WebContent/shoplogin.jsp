<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	pageContext.setAttribute("id", id);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title> <%--로그인 후 화면--%>
<script type="text/javascript">
	function main() {
		if("${id}" == ""){
			location.href = "shop.jsp";
			return;
		} else {
			location.href = "shoplogin.jsp";
		}
	}
	function shopclick() {
		if("${id}" != ""){
			location.href = "shoplogin.jsp";
			return;
		} else {
			location.href = "shop.jsp";
		}
	}
</script>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Anton&display=swap');
	#wrap { 
		margin: 0 auto;
		text-align: center;
		font-family: 'Alfa Slab One', cursive;
		font-family: 'Anton', sans-serif;
	 }
	#wrap hr { width: inherit; border: 1px solid navy; }
	.header, #nav {
		width: 700px; 
		margin: 10px auto;
		text-align: center;
	}
	.header a { font-size: 2em; }
	img { width: 1250px; }
	div a {
	  text-decoration: none;
	  color: black;
	  font-size: 20px;
	  padding: 15px;
	  display:inline-block;
	}
	ul {
	  display: inline;
	  margin: 0;
	  padding: 0;
	}
	ul li {display: inline-block;}
	ul li:hover ul {
		display: block;
		text-align: left;
	}
	ul li ul {
	  position: absolute;
	  width: 200px;
	  display: none;
	}
	ul li ul li { 
		display: block;
		
	}
	ul li ul li a {
		display:block !important;
		font-size: 1.2em;
		height: 10px;
	}
	footer {
		text-align: center;
	}
 	ul li ul li: hober {  
 		dropdown; 
 	 } 
	#nav a:hover{
		color: silver; 
	}
</style>
<!-- <link href="css/main.css" rel="stylesheet" type="text/css" > -->
</head>
<body>

<div id="wrap">
	<hr>
	<div id="header">
		<span class="title"><a href="shop.jsp" type="button" onclick="shop.jsp" style="font-size: 2em;">CASE #</a></span>
	</div>
	<hr>
	<div id="nav">
	<ul>
		<li>
			<a>SHOP</a> | 
			<ul>
				<li><a href="all.jsp">all</a></li>
				<li><a href="phonecase.jsp">phone case</a></li>
				<li><a href="airpods.jsp">airpods case</a></li>
			</ul>
		</li>
		<li>
 			<a>COMMUNITY</a> | 
			<ul>
				<li><a href="bord?type=reviewFinal">Review</a></li>
				<li><a href="bord?type=qnaFinal">Q&A</a></li>
			</ul>
		</li>
	</ul>
<%-- 		<c:if test="${loginUserId eq 'admin'}"> --%>
<!-- 			<a href="admin.jsp">ADMIN</a> | -->
<!-- 			<a href="logout.jsp">LOGOUT</a> -->
<%-- 		</c:if> --%>
	
<%-- 		<c:if test="${empty loginUserId }"> --%>
<!-- 			<a href="login.jsp">LOGIN</a> | -->
<!-- 			<a href="join.jsp">JOIN US</a>  -->
<%-- 		</c:if> --%>
	
<%-- 		<c:if test="${not empty loginUserId }"> --%>
<!-- 			<a href="cart.jsp">CART</a> | -->
<!-- 			<a href="mypage.jsp">MYPAGE</a> | -->
<!-- 			<a href="logout.jsp">LOGOUT</a> -->
<%-- 		</c:if> --%>
		
			<c:choose>
		<c:when test="${loginUserId eq 'admin'}">
			<a href="admin.jsp">ADMIN</a> |
			<a href="logout.jsp">LOGOUT</a>
		</c:when>
		<c:when test="${empty loginUserId }">
			<a href="login.jsp">LOGIN</a> |
			<a href="join.jsp">JOIN US</a> 
		</c:when>
<%-- 		<c:otherwise test="${not empty loginUserId }"> --%>
		<c:otherwise>
			<a href="cart.jsp">CART</a> |
			<a href="mypage.jsp">MYPAGE</a> |
			<a href="logout.jsp">LOGOUT</a>
		</c:otherwise>
	</c:choose>
	</div>
	<br><br>
	<img alt="home이미지" src="https://teastudio.cafe24.com/web/upload/NNEditor/20200529/main_pic.jpg"  height="550">
</div>

</body>

<br><br>
<footer>
	<p class="copyright">copyright © 2022 CaseShop (Case#). All rights reserved.</p>
	<p class="copyright">주소 : 서울시 강남구 테헤란로 124,4F(역삼동,삼원타워) | 대표번호 : 02-0123-4567 | 문의 : phonecaseshop@co.kr</p>
</footer>
</html>