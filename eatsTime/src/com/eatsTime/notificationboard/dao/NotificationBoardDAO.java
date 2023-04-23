package com.eatsTime.notificationboard.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.notificationboard.domain.NotificationBoardVO;

public class NotificationBoardDAO {
	public SqlSession sqlSession;

	public NotificationBoardDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(NotificationBoardVO notificationBoardVO) {
		sqlSession.insert("notificationboard.insert", notificationBoardVO);
	}

}