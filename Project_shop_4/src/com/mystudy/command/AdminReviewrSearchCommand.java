package com.mystudy.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.Project_shop.dao.AdminReviewDAO;
import com.mystudy.Project_shop.vo.AdminReviewVO;
import com.mystudy.paging.AdminPaging;

public class AdminReviewrSearchCommand implements AdminCommand {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String select = request.getParameter("select");
		String keyword = request.getParameter("keyword");
		System.out.println("> select : " + select);
		System.out.println("> keyword : " + keyword);
		
		//--------------------------------------------
		AdminPaging p = new AdminPaging();
		p.setNumPerPage(10); //한페이지에 출력될 게시글수
		
		p.setTotalRecord(AdminReviewDAO.adminSearchCountReview(select, keyword));
		p.setTotalPage();
		System.out.println("> 전체 리뷰 수 : " + p.getTotalRecord());
		System.out.println("> 전체 페이지 수 : " + p.getTotalPage());
		
		String cPage = request.getParameter("cPage");
		if (cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}
		System.out.println("> current page : " + cPage);
		System.out.println("> paging nowPage : " + p.getNowPage());
		
		p.setEnd(p.getNowPage() * p.getNumPerPage());
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
		
		if (p.getEnd() > p.getTotalRecord()) {
			p.setEnd(p.getTotalRecord());
		}
		
		System.out.println("> 시작번호 : " + p.getBegin());
		System.out.println("> 끝번호 : " + p.getEnd());
		
		int nowPage = p.getNowPage();
		int beginPage = (nowPage - 1) / p.getNumPerBlock() * p.getNumPerBlock() + 1;
		p.setBeginPage(beginPage);
		p.setEndPage(beginPage + p.getNumPerBlock() - 1);
		
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		
		System.out.println("> 시작페이지 : " + p.getBeginPage());
		System.out.println("> 마지막페이지 : " + p.getEndPage());
		
		//--------------------------------------------------------

		//단순 페이지 전환인지 DB데이터 조회처리를 해야하는지 결정
		String path;
		if (keyword == null || keyword.equals("")) {
			System.out.println("::: admin-review.jsp 페이지로 이동");
			path = "admin-review.jsp";
			
		} else { 
			System.out.println("::: DB데이터 조회 후 admin-reviewList.jsp 페이지로 이동");
			
			String title = "";
			switch (select) {
				case "0": title = "상품"; break;
				case "1": title = "제목"; break;
				case "2": title = "아이디"; break;
			}
			 
			List<AdminReviewVO> list = AdminReviewDAO.admingetSearchReview(select, keyword, Integer.toString(p.getBegin()), Integer.toString(p.getEnd()));
			System.out.println(">> 현재페이지 리뷰목록 : " + list);
			
			request.setAttribute("list", list);
			request.setAttribute("pvo", p);
			request.setAttribute("title", title);
			request.setAttribute("keyword", keyword);
			request.setAttribute("select", select);
			
			//path = "admin-reviewList.jsp";
			path = "reviewList.jsp";
		}
		return path;
	}

}
