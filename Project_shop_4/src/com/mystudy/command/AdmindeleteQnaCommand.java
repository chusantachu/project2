package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.Project_shop.dao.AdminQnaDAO;
import com.mystudy.Project_shop.dao.CommunityShopDAO;
import com.mystudy.Project_shop.dao.ShopDAO;
import com.mystudy.Project_shop.vo.AdminQnaVO;

public class AdmindeleteQnaCommand implements AdminCommand {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pwd = request.getParameter("pwd");
		String id = request.getParameter("id");
		String cPage = request.getParameter("cPage");
		int qNum = Integer.parseInt(request.getParameter("qNum"));
		
		
		AdminQnaVO vo = AdminQnaDAO.selectQnAVO(qNum);
		
		if (vo.getqPwd().equals(pwd) || pwd.equals("admin")) {
			CommunityShopDAO.qnaDelete(qNum);
			request.setAttribute("qNum", qNum);
			request.setAttribute("cPage", cPage);
			return "admin?type=admin-qna";
			
		} else {
			request.setAttribute("qNum", qNum);
			request.setAttribute("cPage", cPage);
			return "qnaDeletefail.jsp";
		}

	}

}
