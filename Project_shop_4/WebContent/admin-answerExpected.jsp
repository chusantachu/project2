<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답변대기</title>
<style>
	td, form, tr { text-align: center; }
	#h { 
		text-align: center; 
		color: navy;
		} 
	input[type="text"]{
 		line-height: 16px;
  		vertical-align: middle;
	}
	select{
 		height: 27px;
  		vertical-align: middle;
	}
	button {
		height: 33px;
  		vertical-align: middle;
	}
	@import
	url('https://fonts.googleapis.com/css2?family=Anton&display=swap');
	@font-face {
	    font-family: 'IBMPlexSansKR-Regular';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	.paging {
		list-style: none;
		padding-left: 300px;
		padding-top: 40px;
		padding-bottom: 40px;
		font-family: 'Anton';
		text-align: center;
	}
	
	.paging li {
		float: left;
		margin-right: 45px;
	}
	
	.paging li a {
		text-decoration: none;
		display: block;
		padding: 3px 7px;
		font-weight: bord;
		color: black;
	}
	.paging .disable {
		padding: 3px 7px;
		color: silver;
	}
	
	.paging .now {
		padding: 3px 7px;
		font-size: 0.8em;
	}
	.center {
		width: 85%;
		text-align: center;
	}
	#page {
		display: inline-block;
	}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="css/main.css" rel="stylesheet" type="text/css">

</head>
<body>
<%@ include file="common/shopMain.jspf" %>
 	<hr>
	<form action="admin" method="get" style="position: absolute; left: 74%;"> 
		<button type="submit" class="btn btn-dark">전체목록</button>
		<input type="hidden" name="type" value="admin-qna">
	</form>
	<br>
	
	<br>
	<div class="container">
 	<table class="table table-striped">
			<thead>
			<tr>
				<th width="10%">No.</th>
				<th width="15%">ID</th>
				<th width="50%">TITLE</th>
				<th>DATE</th>
				<th width="10%">HITS</th>
			</tr>
		</thead>
		<tbody>
		
 	 	<c:if test="${empty nowpageList and empty all}"> 
 	 			<tr> 
 	 				<td colspan="5">현재 작성된 글이 없습니다.</td> 
 	 			</tr> 
 		</c:if> 
 		
 		<c:if test="${not empty nowpageList}">
			<c:forEach var="vo" items="${nowpageList }"> 
				<tr>
					<td>${vo.qNum }</td>
					<td>${vo.id }</td>
					<td>
						<a class="link" href="admin?type=admin-qnaDetailExpected&qNum=${vo.qNum}&cPage=${cPage}" style="font-size: 1em; color: black;">
							${vo.qTitle }
						</a>
					</td>
					<td>${vo.qDate.substring(0,10)}</td>
					<td>${vo.qHits }</td>
				</tr>
	 		</c:forEach> 
	 	</c:if>
		</tbody>
	</table>
	</div>
<div class="center">	
	<div id="page">
		<ol class="paging">
		<c:if test="${pvo.beginPage == 1}">
			<li class="disable">&nbsp;&lt;&nbsp;</li>
		</c:if>
		<c:if test="${pvo.beginPage != 1}">	
			<li>
					<a href="admin?type=admin-answerExpected&cPage=${pvo.beginPage - 1 }">&nbsp;&lt;&nbsp;</a> 
			</li>
		</c:if>
		
		<c:forEach var="pageNo" begin="${pvo.beginPage }" end="${pvo.endPage }">
			<c:if test="${pageNo == pvo.nowPage }">
				<li class="now">${pageNo}</li>
			</c:if>
			<c:if test="${pageNo != pvo.nowPage }">
	 			<li class="notnow"><a href="admin?type=admin-answerExpected&cPage=${pageNo }">${pageNo}</a></li> 
			</c:if>
		</c:forEach>	
		
		<c:if test="${pvo.endPage < pvo.totalPage}">
			<li>
					<a href="admin?type=admin-answerExpected&cPage=${pvo.endPage + 1 }">&nbsp;&gt;&nbsp;</a>
			</li>
		</c:if>
		<c:if test="${pvo.endPage >= pvo.totalPage}">
			<li class="disable">&nbsp;&gt;&nbsp;</li>
		</c:if>
		</ol>
	</div>
</div>
</body>
</html>