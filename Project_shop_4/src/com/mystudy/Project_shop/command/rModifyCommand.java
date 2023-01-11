package com.mystudy.Project_shop.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.Project_shop.dao.AdminReviewDAO;
import com.mystudy.Project_shop.vo.AdminReviewVO;

public class rModifyCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		int bNum = Integer.parseInt(request.getParameter("bNum"));
		String cPage = request.getParameter("cPage");

		
		AdminReviewVO vo = AdminReviewDAO.adminselectReview(bNum);
		
		request.setAttribute("qNum", bNum);
		request.setAttribute("cPage", cPage);
		request.setAttribute("vo", vo);
		String path = "rModify.jsp?qNum=" + bNum + "&cPage=" + cPage;
		
		return path;
	}

}
