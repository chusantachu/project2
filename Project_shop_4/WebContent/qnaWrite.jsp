<%@page import="com.mystudy.Project_shop.dao.AdminProductDAO"%>
<%@page import="com.mystudy.Project_shop.dao.CommunityShopDAO"%>
<%@page import="com.mystudy.Project_shop.vo.productVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

List<productVO> list = (List)AdminProductDAO.productAllList();
request.setAttribute("list", list);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 작성</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script>
function sendData(){
	let firstForm = document.forms[0];
	let pwd1 = document.getElementById('pwd1').value;
	let pwd2 = document.getElementById('pwd2').value;
	//alert("firstForm.elements.length : " + firstForm.elements.length);
	for (let i = 0; i < 4; i++){
		console.log(firstForm.elements[i]);
		console.log(firstForm.elements[i].value);
		if (firstForm.elements[i].value.trim() == "") {
			alert(firstForm.elements[i].title + "을(를) 입력하세요.");
			firstForm.elements[i].value= "";
			firstForm.elements[i].focus();
			return;
		}
	}
	if(pwd1.trim() != pwd2.trim()){
		alert("비밀번호가 일치하지 않습니다. \n확인 후 다시 입력해주세요");
		firstForm.elements[2].value= "";
		firstForm.elements[3].value= "";
		firstForm.elements[2].focus();
		return;
	}
	firstForm.submit();
	}
	
	function qna_go() {
		location.href="admin?type=admin-qna";
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
	th {
	 text-align: center;
	}
</style>
</head>
<body>
<%@ include file="common/shopMain.jspf" %>
	<form action="bord" method="get">
	<div class="container">
		<table>
			<tbody>
				<tr>
					<th width="20%" >작성자</th>
					<td>${loginUserId}</td>
				</tr>
				<tr> 
					<th>상품</th>
					<td>
						<select name="productName" title="문의상품">
							<option value="" disabled selected hidden>----------- 문의하실 상품 선택 -----------</option>
								<option>선택안함</option>
							<c:forEach var="vo" items="${list}">
								<option value="${vo.productName }">${vo.productName}</option>
							</c:forEach>
								
						</select>
					</td>
				</tr>
				<tr>
					<th width="60%" >제목</th>
					<td>
						<input type="text" title="제목" name="Qtitle" size="47px">	
					</td>
				</tr>
				<tr width="10%" >
					<th>내용</th>
					<td colspan="2">
						<textarea name="Qcontent" title="내용"  rows="8" cols="50"></textarea>	
					</td>
				</tr>
				<tr width="10%">
					<th>비밀번호</th>
					<td colspan="2"><input type="password" name="Qpwd" id="pwd1" title="비밀번호"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td colspan="2"><input type="password" name="Qpwd1" id="pwd2" title="비밀번호 확인"></td>
				</tr>
				<tr>
					<th colspan="2">&nbsp;</th>
				</tr>
				<tr>
					<td colspan="2" height="30px">
					<input type="button" class="btn btn-dark" value="저장" onclick="sendData()">
					<input type="button" class="btn btn-dark" value="목록" onclick="qna_go()">
					<input type="reset" class="btn btn-dark" value="초기화">
					<input type="hidden" name="type" value="Qwrite_ok">
					<input type="hidden" name="id" value="${loginUserId}">
					</td>
				</tr>
			</tbody>
		</table>
		</div>
	</form>
</div>

</body>
</html>