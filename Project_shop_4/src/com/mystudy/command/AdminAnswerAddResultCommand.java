package com.mystudy.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.Project_shop.dao.AdminAnswerDAO;
import com.mystudy.Project_shop.dao.AdminQnaDAO;
import com.mystudy.Project_shop.vo.AdminAnswerVO;
import com.mystudy.Project_shop.vo.AdminQnaVO;


public class AdminAnswerAddResultCommand implements AdminCommand{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		com.mystudy.Project_shop.vo.AdminAnswerVO vo = (AdminAnswerVO)request.getAttribute("vo");
		
		System.out.println("vo : " + vo);
		
		int qaNum = vo.getQaNum();
		int qNum = vo.getqNum();
		
		AdminAnswerVO vo1 = AdminAnswerDAO.selectAnswerOne(qaNum);
		AdminQnaVO vo2 = AdminQnaDAO.selectQnAVO(qNum);
		
		request.setAttribute("vo", vo1);
		request.setAttribute("vo2", vo2);
		
		return "admin-answerDetailAdd.jsp";
	
	}

}
