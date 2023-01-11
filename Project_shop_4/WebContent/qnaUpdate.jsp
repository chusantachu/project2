<%@page import="com.mystudy.Project_shop.vo.AdminQnaVO"%>
<%@page import="com.mystudy.Project_shop.dao.AdminQnaDAO"%>
<%@page import="com.mystudy.Project_shop.dao.AdminProductDAO"%>
<%@page import="com.mystudy.Project_shop.dao.CommunityShopDAO"%>
<%@page import="com.mystudy.Project_shop.vo.productVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int qNum = Integer.parseInt(request.getParameter("qNum"));
String cPage = (String) request.getParameter("cPage");
List<productVO> list = (List)AdminProductDAO.productAllList();
AdminQnaVO vo = AdminQnaDAO.selectQnAVO(qNum);

request.setAttribute("vo", vo);
request.setAttribute("list", list);
session.setAttribute("qNum", qNum);
session.setAttribute("cPage", cPage);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 수정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<script>
function sendData(){
	let firstForm = document.forms[0];
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
							<option value="" disabled selected hidden>
								<c:if test="${empty vo.productName}">----------- 문의하실 상품 선택 -----------</c:if>
								<c:if test="${not empty vo.productName}">${vo.productName}</c:if>
							</option>
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
						<input type="text" title="제목" name="Qtitle" size="47px" value="${vo.qTitle }">	
					</td>
				</tr>
				<tr width="10%" >
					<th>내용</th>
					<td colspan="2">
						<textarea name="Qcontent" title="내용"  rows="8" cols="50" >${vo.qContents }</textarea>	
					</td>
				</tr>
				<tr width="10%">
					<th>비밀번호</th>
					<td colspan="2"><input type="password" name="Qpwd" id="pwd" title="비밀번호"></td>
				</tr>
				<tr>
					<th colspan="2">&nbsp;</th>
				</tr>
				<tr>
					<td colspan="2" height="30px">
					<input type="button" class="btn btn-dark" value="저장" onclick="sendData()">
					<input type="button" class="btn btn-dark" value="목록" onclick="qna_go()">
					<input type="reset" class="btn btn-dark" value="초기화">
					<input type="hidden" name="type" value="qnaModify">
					<input type="hidden" name="qNum" value="${vo.qNum}">
					<input type="hidden" name="cPage" value="${cPage}">
					</td>
				</tr>
			</tbody>
		</table>
		</div>
	</form>
</div>

</body>
</html>