package com.mystudy.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.Project_shop.dao.AdminCommentDAO;
import com.mystudy.Project_shop.dao.AdminReviewDAO;
import com.mystudy.Project_shop.vo.AdminCommentVO;
import com.mystudy.Project_shop.vo.AdminReviewVO;


public class AdminCommentDeleteCommand implements AdminCommand{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int bNum = Integer.parseInt(request.getParameter("bNum"));
		int cNum = Integer.parseInt(request.getParameter("cNum"));
		int cPage = Integer.parseInt(request.getParameter("cPage"));
		
		AdminCommentDAO.admindeleteComment(cNum);

		AdminReviewVO vo = AdminReviewDAO.adminselectReview(bNum);
		AdminReviewDAO.adminupdateReviewHits(bNum);
		
		List<AdminCommentVO> list = AdminCommentDAO.adminselectComment(bNum);
		
		//2.데이터를 응답할 페이지에 전달
		request.setAttribute("vo", vo);
		request.setAttribute("list", list);
		request.setAttribute("cPage", cPage);
		
		String path = "reviewDetail.jsp";
		
		if(request.getParameter("select").length() > 0 && request.getParameter("keyword").length() > 0) {
			String select = request.getParameter("select");
			String keyword = request.getParameter("keyword");
			
			request.setAttribute("vo", vo);
			request.setAttribute("list", list);
			request.setAttribute("cPage", cPage);
			request.setAttribute("select", select);
			request.setAttribute("keyword", keyword);
			
			path = "reviewDetailSearch.jsp";
			
		}
		
		


		//return "admin?type=admin-reviewDetail";
		//return "bord?type=reviewDetail&bNum=" + bNum + "&cPage=" + cPage;
		return path;
		
	}

}
