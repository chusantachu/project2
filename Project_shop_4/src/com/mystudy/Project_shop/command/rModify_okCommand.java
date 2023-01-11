package com.mystudy.Project_shop.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.Project_shop.dao.AdminReviewDAO;
import com.mystudy.Project_shop.dao.CommunityShopDAO;
import com.mystudy.Project_shop.dao.ShopDAO;
import com.mystudy.Project_shop.vo.AdminReviewVO;
import com.mystudy.Project_shop.vo.reviewVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class rModify_okCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cPage = (String) request.getParameter("cPage");
		int bNum = Integer.parseInt(request.getParameter("bNum"));
		String proName = request.getParameter("proName");
		
		
		AdminReviewVO vo = AdminReviewDAO.adminselectReview(bNum);
		System.out.println("vo : " + vo);
		
		System.out.println("cPage : " + cPage); 
		System.out.println("bNum : " + bNum); 
		System.out.println("proName : " + proName); 
		
		String filepath = "c:/MyStudy/60_Web/Project_shop_2/WebContent/image";
		MultipartRequest mr = new MultipartRequest(
				request, filepath, (10 * 1024 * 1024),"UTF-8", new DefaultFileRenamePolicy()
				);
		
		
		reviewVO rvo = new reviewVO();
		
		rvo.setbNum(bNum);
		rvo.setTitle(mr.getParameter("title"));
		rvo.setbContents(mr.getParameter("bContent"));
		rvo.setFileName(mr.getParameter("proName"));
		
		System.out.println("rvo : " + rvo);
		
		// 첨부 파일 데이터 처리
		if (mr.getFile("fileName") != null) { // 첨부 파일이 있으면?
			String str = mr.getFilesystemName("fileName");
			rvo.setFileName(str.substring(0, str.length()-4));
			rvo.setOriName(str.substring(0, str.length()-4));
		} else {
			rvo.setFileName(vo.getFileName());
			rvo.setOriName(vo.getFileName());
		}
		System.out.println(">> rvo : "+rvo);
		
		CommunityShopDAO.rUpdate(rvo);
		
		vo = AdminReviewDAO.adminselectReview(bNum);
		AdminReviewDAO.adminupdateReviewHits(bNum);
		
	 	String path = "bord?type=reviewDetail&Page=" + cPage + "&bNum=" + bNum;
		return path;
	}

}
