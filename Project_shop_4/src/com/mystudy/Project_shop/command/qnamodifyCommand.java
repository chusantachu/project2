package com.mystudy.Project_shop.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.Project_shop.dao.AdminQnaDAO;
import com.mystudy.Project_shop.dao.CommunityShopDAO;
import com.mystudy.Project_shop.dao.ShopDAO;
import com.mystudy.Project_shop.vo.AdminQnaVO;
import com.mystudy.Project_shop.vo.qnaVO;

public class qnamodifyCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		int qNum = Integer.parseInt(request.getParameter("qNum"));
		String cPage = request.getParameter("cPage");
		String productName = request.getParameter("productName");
		String Qtitle = request.getParameter("Qtitle");
		String Qcontent = request.getParameter("Qcontent");
		String pwd = request.getParameter("Qpwd");
		
		AdminQnaVO vo = new AdminQnaVO();
		vo.setProductName(productName);
		vo.setqTitle(Qtitle);
		vo.setqContents(Qcontent);
		vo.setqNum(qNum);
		
		System.out.println("vo : " + vo);

		AdminQnaVO vo1 = AdminQnaDAO.selectQnAVO(qNum); //기본 비밀번호랑 확인하기 위해 기존 값 불러오기
		
		if (vo1.getqPwd().equals(pwd) || pwd.equals("admin")) {
			AdminQnaDAO.adminupdateQna(vo); //새로운값넣고
			vo1 = AdminQnaDAO.selectQnAVO(qNum); //업데이트된값 다시 불러오기
			
			request.setAttribute("vo", vo);
			request.setAttribute("cPage", cPage);
			request.setAttribute("qNum", qNum);
			return "admin?type=admin-qnaDetail";

			
		} else {
			request.setAttribute("vo", vo1);
			request.setAttribute("cPage", cPage);
			request.setAttribute("qNum", qNum);
			return "qnaUpdatefail.jsp";
		}

	
	}

}
