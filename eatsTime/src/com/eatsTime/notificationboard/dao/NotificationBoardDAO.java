package com.eatsTime.notificationboard.dao;

import java.util.List;

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
	
	public List<NotificationBoardDAO> selectAllAdmin(){
		return sqlSession.selectList("notificationboard.selectAllAdmin");
	}

}