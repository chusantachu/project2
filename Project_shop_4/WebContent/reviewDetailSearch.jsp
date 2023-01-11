<%@page import="com.mystudy.Project_shop.vo.AdminCommentVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
// if (request.getParameter("keyword") != null & request.getParameter("select") != null) {
// 	String keyword = (String)request.getParameter("keyword");
// 	String select = (String)request.getParameter("select");
// 	System.out.println("keyword : " + keyword );
// 	System.out.println("select : " + select );
	
// 	request.setAttribute("keyword", keyword);
// 	request.setAttribute("select", select);
// }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰상세보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script></head>
  
<script>
 	function sendData() {
  		let form = document.forms[1];
	console.log("form.elements.length : " + form.elements.length);
		for (let i = 0; i < form.elements.length; i++) {
			console.log(form.elements[i].value);		
		}
	if (form.elements[0].value.trim() == "") {
		alert("내용을 입력하세요.");
		form.elements[0].value="";
		form.elements[0].focus();
		return;
		}
  		form.submit();
 	}
		
</script>

<style>
	tr { text-align: center; }
	td { text-align: top; }
	table {
		margin: 60px auto 0; 
	}
	.abc { 
		caption-side: top;
		text-align: right;
		}
</style>

<body>
<%@ include file="common/shopMain.jspf" %>
<hr>
<br>
<br>
<h1 style="text-align: center;">REVIEW</h1>

<div class="container">
<table class="table" style="width: 800px;">
  <tbody>
      <tr>
        <th width = 30%>No.</th>
        <td>${vo.bNum }</td>
      </tr>
      <tr>
        <th width = 30%>TITLE</th>
        <td>${vo.title }</td>
      </tr>
      <tr>
        <th width = 30%>ID</th>
        <td>${vo.id }</td>
      </tr>
      <tr>
        <th width = 30%>DATE</th>
        <td>${vo.bDate.substring(0,10) }</td>
      </tr>
      <tr>
      	<th width = 30%>PRODUCT</th>
		<td>${vo.productName }</td>
      </tr>
      <tr>
        <th width = 30%>CONTENTS</th>
        <td>${vo.bContents }</td>
      </tr> 
     <c:if test="${not empty vo.fileName}">
	     <tr>
	      	<th>IMAGE</th>
	      	 <td> 
	        	<img src="image/${vo.fileName}.jpg" style="width: 30em;">
	        </td>
	      </tr>
      </c:if>
      <tr>
      
      	<th colspan="2">
      		  <form action="bord" method="get">
      		   <c:choose>
				<c:when test="${loginUserId eq vo.id}">
					<div style=" text-align: center;">
						<button type="button" class="btn btn-dark" onclick="location.href='bord?type=rModify&bNum=${vo.bNum}&cPage=${cPage}'">수정</button>
						<button type="button" class="btn btn-dark" onclick="location.href='bord?type=rDelete&bNum=${vo.bNum}&cPage=${cPage}'">삭제</button>
						<button type="button" class="btn btn-dark" onclick="location.href='bord?type=reviewList&cPage=${cPage}&keyword=${keyword}&select=${select}'" style=" display: inline-block;">목록</button>
					</div>
				</c:when>
				<c:when test="${loginUserId eq 'admin'}">
					<div style=" text-align: center;">
						<button type="button" class="btn btn-dark" onclick="location.href='bord?type=rModify&bNum=${vo.bNum}&cPage=${cPage}'">수정</button>
						<button type="button" class="btn btn-dark" onclick="location.href='bord?type=rDelete&bNum=${vo.bNum}&cPage=${cPage}'">삭제</button>
						<button type="button" class="btn btn-dark" onclick="location.href='bord?type=reviewList&cPage=${cPage}&keyword=${keyword}&select=${select}'" style=" display: inline-block;">목록</button>
					</div>	
				</c:when>
				 <c:otherwise>
			 			<div style=" text-align: center;">
							<button type="button" class="btn btn-dark" onclick="location.href='bord?type=reviewList&cPage=${cPage}&keyword=${keyword}&select=${select}'" style=" display: inline-block;">목록</button>
						</div>
				 </c:otherwise>
				</c:choose>
			</form>	
      	</th>
      </tr>
  </tbody>
</table>
    
<form action="admin" method=get>
  <table class="table" style="width: 600px;">
  <caption class="abc">COMMENTS</caption>
  		<tr>
	      	<td colspan="3" style="text-align: center;">
	      		<textarea rows="2" cols="60" name="content"></textarea>
	      	</td>
	      	<td style="text-align: center;">
	      		<button type="button" class="btn btn-dark" onclick="sendData()">작성</button>
	      		<input type="hidden" name="bNum" value="${vo.bNum }">
	      		<input type="hidden" name="id" value="${loginUserId }">
	      		<input type="hidden" name="type" value="admin-commentAdd">
	      		<input type="hidden" name="cPage" value="${cPage}">
	      		<input type="hidden" name="select" value="${select}">
	      		<input type="hidden" name="keyword" value="${keyword}">
	      	</td>
      </tr>
  </table>
</form>

<table class="table" style="width: 800px;">  
	<tr>
		<th>ID</th>
		<th width=60%>COMMENT</th>
		<th width=30% colspan="2">DATE</th>
	</tr>
	<c:if test="${empty list }">
		<tr>
			<td colspan="3" style="text-align: center;">조회되는 댓글이 없습니다.</td>
		</tr>
	</c:if>
		 
	<c:if test="${not empty list }"> 
	
		<c:forEach var="vo" items="${list }">  
		<c:choose>
			<c:when test="${loginUserId eq 'admin'}">
				<tr> 
					<td style="text-align: center;">
						<c:if test="${vo.id eq 'admin'}">관리자</c:if>
						<c:if test="${vo.id ne 'admin'}">${vo.id}</c:if>
					</td>
					<td style="text-align: center;">${vo.content }</td> 
					<td style="text-align: center;" >${vo.cDate.substring(0,10) }</td>
					<td style="text-align: center;">
						<button type="button" class="btn btn-dark" onclick='location.href="admin?type=admin-commentDelete&cNum=${vo.cNum}&bNum=${vo.bNum}&cPage=${cPage}&keyword=${keyword }&select=${select }"'>삭제</button>
					 </td> 
				</tr>
			</c:when>
			
			<c:when test="${loginUserId eq vo.id}">
				<tr> 
					<td style="text-align: center;">
						<c:if test="${vo.id eq 'admin'}">관리자</c:if>
						<c:if test="${vo.id ne 'admin'}">${vo.id}</c:if>
					</td>
					<td style="text-align: center;">${vo.content }</td> 
					<td style="text-align: center;" >${vo.cDate.substring(0,10) }</td>
					<td style="text-align: center;">
						<button type="button" class="btn btn-dark" onclick='location.href="admin?type=admin-commentDelete&cNum=${vo.cNum}&bNum=${vo.bNum}&cPage=${cPage}&keyword=${keyword }&select=${select }"'>삭제</button>
					 </td> 
				</tr> 
			</c:when>
			
			<c:otherwise>
				<tr> 
					<td style="text-align: center;">
						<c:if test="${vo.id eq 'admin'}">관리자</c:if>
						<c:if test="${vo.id ne 'admin'}">${vo.id}</c:if>
					</td>
					<td style="text-align: center;">${vo.content }</td> 
					<td style="text-align: center;" >${vo.cDate.substring(0,10) }</td> 
					<td>&nbsp;</td>
				</tr>
			</c:otherwise>
		</c:choose>
		</c:forEach>
	</c:if> 
</table>
</div>
</body>
</html>
