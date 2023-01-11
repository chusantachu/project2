<%@page import="com.mystudy.Project_shop.vo.AdminReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="com.mystudy.Project_shop.dao.CommunityShopDAO"%>
<%@page import="com.mystudy.Project_shop.vo.productVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
// 	request.setCharacterEncoding("UTF-8");

// 	session.getAttribute("vo");
// 	String cPage = request.getParameter("cPage");
// 	pageContext.setAttribute("cPage", cPage);
// 	String bNum = request.getParameter("bNum");
// 	pageContext.setAttribute("bNum", bNum);
	AdminReviewVO vo = new AdminReviewVO();
	vo = (AdminReviewVO)request.getAttribute("vo");
	String cPage = request.getParameter("cPage");
	String bNum = request.getParameter("bNum");
	String aid = vo.getId();
	
	request.setAttribute("aid", aid);
	request.setAttribute("cPage", cPage);
	request.setAttribute("bNum", bNum);

//세션에 저장된 아이디 가져오기
String id = (String) session.getAttribute("loginUserId");

//주문한 내역 가져오기
List<productVO> Plist = CommunityShopDAO.PList(id);
List<productVO> alist = CommunityShopDAO.PList(aid);

System.out.println("Plist : " + Plist);
session.setAttribute("Plist", Plist);
session.setAttribute("alist", alist);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>문의글 작성</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script>
function rModify_ok(frm){
	let firstForm = document.forms[0];
	//alert("firstForm.elements.length : " + firstForm.elements.length);
	for (let i = 0; i < 3; i++){
		//console.log("firstForm.elements.length : " + firstForm.elements.length);
		console.log("firstForm.elements[" + i + "] : " + firstForm.elements[i]);
		console.log("firstForm.elements[" + i + "].value : " + firstForm.elements[i].value);
		if (firstForm.elements[i].value.trim() == "") {
			//if(i == 0) continue;
			alert(firstForm.elements[i].title + "을(를) 입력하세요.");
			firstForm.elements[i].value= "";
			firstForm.elements[i].focus();
			return;
		}
	}
	firstForm.submit();
	}
	
	function reView_go() {
		location.href="review.jsp?cPage=${cPage}&bNum=${bNum}";
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
@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Anton&display=swap');
	table {
		width: 700px;
		margin: 30px auto 0;
	}

</style>
</head>
<body>
<%@ include file="common/shopMain.jspf" %>
	<form action="bord?type=rModify_ok&cPage=${cPage}&bNum=${bNum}" method="post" enctype="multipart/form-data">
		<table>
			<tbody>
				<tr width="20%">
					<th>작성자</th>
					<td>
						<c:if test="${loginUserId eq 'admin'}">
							${vo.id}						
						</c:if>
						<c:if test="${loginUserId ne 'admin'}">
							${loginUserId}					
						</c:if>
					</td>
				<tr width="60%">
					<th>구매상품</th>
					<td>	
						<c:if test="${loginUserId eq 'admin'}">
							<select name="proName" title="구매상품">
								<option value="" disabled selected hidden>${vo.productName }</option>
								<c:forEach var="vo" items="${alist}">
									<option value="${vo.model} ${vo.productName }">${vo.model} - ${vo.productName }</option>
								</c:forEach>
							</select>
						</c:if>
						
						<c:if test="${loginUserId ne 'admin'}">
							<select name="proName" title="구매상품">
								<option value="" disabled selected hidden>${vo.productName }</option>
								<c:forEach var="vo" items="${Plist}">
									<option value="${vo.model} ${vo.productName }">${vo.model} - ${vo.productName }</option>
								</c:forEach>
							</select>
						</c:if>
					</td>
				</tr>
				<tr width="20%">
					<th>제목</th>
					<td>
						<input type="text" title="제목" name="title" value="${vo.title }" size="67px">
					</td>
				</tr>
				<tr width="10%">
					<th>내용</th>
					<td colspan="2">
						<textarea name="bContent" title="내용"  rows="5" cols="70">${vo.bContents }</textarea>	
					</td>
				</tr>
				<tr width="10%">
					<th>첨부파일</th>
					<td><input type="file" name="fileName"  title="file">기존파일 ( ${vo.oriName } )</td>
				</tr>
				</tbody>
				<tfoot style="height: 90px;">
				<tr>
					<td colspan="3" >
						<button type="button" class="btn btn-dark" onclick="rModify_ok(this.form)">수정</button>
						<button type="button" class="btn btn-dark" onclick="reView_go()">목록</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>