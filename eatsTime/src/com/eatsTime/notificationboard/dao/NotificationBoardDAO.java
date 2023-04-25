package com.eatsTime.notificationboard.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class NotificationBoardDAO {
	public SqlSession sqlSession;

	public NotificationBoardDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}