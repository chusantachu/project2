<%@page import="com.mystudy.Project_shop.dao.CommunityShopDAO"%>
<%@page import="com.mystudy.Project_shop.vo.productVO"%>
<%@page import="com.mystudy.Project_shop.vo.AdminQnaVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
//세션에 저장된 아이디 가져오기
String id = (String) session.getAttribute("loginUserId");

//주문한 내역 가져오기
List<productVO> Plist = CommunityShopDAO.PList(id);

System.out.println("Plist : " + Plist);
session.setAttribute("Plist", Plist);



if (id == null) {
%>
<script>
	alert("로그인 후 작성이 가능합니다.");
	location.href="login.jsp";
</script>

<%
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성</title>
<script>

function sendData(){
	let firstForm = document.forms[0];
// 	alert("firstForm.elements.length : " + firstForm.elements.length);
	for (let i = 0; i < firstForm.elements.length; i++){
		console.log(firstForm.elements[i]);
		console.log(firstForm.elements[i].value);
		if (firstForm.elements[i].value.trim() == "") {
			if(i == 3) continue; //첨부파일은 제외
			alert(firstForm.elements[i].title + "을(를) 입력 하세요");
			firstForm.elements[i].value= "";
			firstForm.elements[i].focus();
			return;
		}
	}
	firstForm.submit();
	}
	
	function Rev_go() {
		location.href="review.jsp";
	}
	function shopclick() {
		if("${id}" == ""){
			location.href = "shop.jsp";
		} else {
			location.href = "shoplogin.jsp";
		}
	}

</script>
<style>
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
	table {
		width: 500px;
		margin: 30px auto 0; 
	}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="common/shopMain.jspf" %>
<div>
	<h1 style="text-align: center;">REVIEW</h1>
	<form action="bord?type=Rwrite_ok&id=<%=id%>" method="post" enctype="multipart/form-data">
		<table>
			<tbody>
				<tr>
					<th>작성자</th>
					<td>
						${loginUserId}
					</td>
				</tr>
				<tr> 
					<th>구매상품</th>
					<td>
						<select name="proName" title="구매상품">
							<option value="" disabled selected hidden>------ 구매하신 상품 내역 선택 ------</option>
							<c:forEach var="vo" items="${Plist}">
								<option value="${vo.model} ${vo.productName }">${vo.model} - ${vo.productName }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" title="제목" name="title" size="33px">	
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea name="bContent" rows="5" cols="35" title="내용"></textarea>
					</td>
				</tr>
				<tr>
					<th>이미지파일</th>
					<td>
						<input type="file" name="fileName" title="이미지파일">
					</td>
				</tr>
			</tbody>	
		<tfoot>
			<tr>
				<td colspan="2" style="text-align: center; height: 100px;">
					<input type="button" class="btn btn-dark" value="저장" onclick="sendData()">
					<input type="reset" class="btn btn-dark" value="초기화">
					<input type="button" class="btn btn-dark" value="목록보기" onclick="Rev_go()">
				</td>
			</tr>
		</tfoot>
	</table>
</form>
</div>
</body>
</html>