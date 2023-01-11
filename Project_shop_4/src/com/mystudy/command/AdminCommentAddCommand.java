package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.Project_shop.dao.AdminCommentDAO;
import com.mystudy.Project_shop.vo.AdminCommentVO;


public class AdminCommentAddCommand implements AdminCommand{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		String content = request.getParameter("content");
		String cPage = request.getParameter("cPage");
		String id = request.getParameter("id");
		int bNum = Integer.parseInt(request.getParameter("bNum"));
		String path = null;
		

		
		
		if ((request.getParameter("select").length() > 0) && (request.getParameter("keyword").length() > 0)) {
			String keyword = request.getParameter("keyword");
			String select = request.getParameter("select");
			request.setAttribute("keyword", keyword);
			request.setAttribute("select", select);
			
			path = "bord?type=reviewDetailSearch&cPage=" + cPage + "&keyword=" + keyword + "&select=" + select;
			
		} else {
			path = "bord?type=reviewDetail&cPage=" + cPage;
		}
		
		AdminCommentVO vo = new AdminCommentVO();
		vo.setbNum(bNum);
		vo.setContent(content);
		vo.setId(id);

		AdminCommentDAO.admininsertComment(vo);
		System.out.println("add vo : " + vo);
		
		request.setAttribute("cPage", cPage);
	
		
		return path;
		//return "addComment_ok.jsp";
	
	}

}
