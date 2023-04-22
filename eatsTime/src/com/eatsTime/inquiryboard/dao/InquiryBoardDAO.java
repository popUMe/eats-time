package com.eatsTime.inquiryboard.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class InquiryBoardDAO {
	public SqlSession sqlSession;

	public InquiryBoardDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}