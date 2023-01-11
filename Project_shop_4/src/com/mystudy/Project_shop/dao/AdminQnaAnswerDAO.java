package com.mystudy.Project_shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.Project_shop.vo.AdminQnaAnswerVO;
import com.mystudy.mybatis.DBService;

public class AdminQnaAnswerDAO {
	
	public static List<AdminQnaAnswerVO> selectQnaAnswerAll() {
		SqlSession ss = DBService.getFactory().openSession();
		List<AdminQnaAnswerVO> list = ss.selectList("shop.adminselectQnaAnswerAll");
		ss.close();
		return list;
	}
	
	public static AdminQnaAnswerVO selectQnaAnswer(int qNum) {
		SqlSession ss = DBService.getFactory().openSession();
		AdminQnaAnswerVO vo = ss.selectOne("shop.adminselectQnaAnswer", qNum);
		ss.close();
		return vo;
	}
	
}
