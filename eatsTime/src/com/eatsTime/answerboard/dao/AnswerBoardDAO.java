package com.eatsTime.answerboard.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class AnswerBoardDAO {
	public SqlSession sqlSession;

	public AnswerBoardDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}