package com.eatsTime.main.dao;


import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.main.domain.Criteria;
import com.eatsTime.main.domain.MainDTO;
import com.eatsTime.mybatis.config.MyBatisConfig;


@SuppressWarnings("unused")
public class MainDAO {
	
	private static SqlSession sqlSession;
	
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	public int getTotal() {
		return 0;
	}
	public Object selectAllAdmin(Criteria criteria) {
		return null;
	}
	 





	

}