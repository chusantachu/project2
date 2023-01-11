<%@page import="com.mystudy.Project_shop.dao.CommunityShopDAO"%>
<%@page import="com.mystudy.Project_shop.vo.*"%>
<%@page import="com.mystudy.Project_shop.dao.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	request.setCharacterEncoding("utf-8");
	//파라미터 값 추출
	int qNum = Integer.parseInt(request.getParameter("qNum"));
	String cPage = request.getParameter("cPage");
	
	System.out.println("qNum : " + qNum);
	System.out.println("cPage : " + cPage);
	
	//조회수 1 증가
	int up = CommunityShopDAO.upHit(qNum);
	
	qnaVO vo = CommunityShopDAO.selectOne(qNum); 
	 System.out.println("qNum : " + qNum);
	 System.out.println("vo : " + vo);
	 
	session.setAttribute("vo", vo);
	session.setAttribute("qNum", qNum);
	session.setAttribute("cPage", cPage);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>QNA VIEW</title>
<script>
	function qna_go() {
		location.href = "bord?type=qna&id=${id}";
	}
	function qna_modify() {
		location.href = "bord?type=modify&qNum=${qNum}&cPage=${cPage}&id=${id}";
	}
	function qna_delete() {
		location.href = "bord?type=delete&qNum=${qNum}&cPage=${cPage}&id=${id}";
	}
	function shopclick() {
		if("${id}" == ""){
			location.href = "shop.jsp";
		} else {
			location.href = "shoplogin.jsp?id=${id}";
		}
	}
</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Anton&display=swap');
	}
</style>
<link href="css/main.css" rel="stylesheet" type="text/css" >
</head>
<body>
<%@ include file="common/shopMain.jspf" %>
<br><br>
			<h2>Q&A</h2>
			<br><br><br>
<div class="container">
	<table class="table table-hover">
	<colgroup>
                <col width="20%" />
                <col width="65%" />
                <col width="15%" />
     </colgroup>
			<tbody>
				<tr>
					<td>NO. ${vo.qNum }</td>
					<td>작성자 : ${vo.id }</td>
					<td>${vo.qDate }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="2">${vo.qTitle }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="2">${vo.qContents }</td>
				</tr>
				<tr>
					<td colspan="3">
				<c:choose>
				<c:when test="${id == vo.id || fn:contains(id, 'admin')}">
					<button onclick="qna_modify()">수정</button>
					<button onclick="qna_delete()">삭제</button>
					<button onclick="qna_go()">목록보기</button>
				</c:when>	
				<c:otherwise>
					<button onclick="qna_go()">목록보기</button>
				</c:otherwise>
				</c:choose>
					<input type="hidden" name="id" value="${id }">
					<input type="hidden" name="cPage" value="${cPage }">
					<input type="hidden" name="qNum" value="${qNum }">
					</td>
				</tr>
			</tbody>
		
		</table>
		</div>
<br><br><br>


</body>
</html>