package com.eatsTime.notificationboard.dao;

<<<<<<< HEAD
import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;
=======
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.notificationboard.domain.Criteria;
import com.eatsTime.notificationboard.domain.NotificationBoardDTO;
import com.eatsTime.notificationboard.domain.NotificationBoardVO;
>>>>>>> master

public class NotificationBoardDAO {
	public SqlSession sqlSession;

	public NotificationBoardDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
<<<<<<< HEAD
=======
	
	public void insert(NotificationBoardVO notificationBoardVO) {
		sqlSession.insert("notificationboard.insert", notificationBoardVO);
	}
	
	public List<NotificationBoardDTO> selectAllAdmin(Criteria criteria){
		return sqlSession.selectList("notificationboard.selectAllAdmin", criteria);
	}
	
	public NotificationBoardVO viewBoard(Long notbId){
		return sqlSession.selectOne("notificationboard.viewBoard", notbId);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("notificationboard.getTotal");
	}
	
	public void edit(NotificationBoardVO notificationBoardVO) {
		sqlSession.update("notificationboard.edit", notificationBoardVO);
	}
>>>>>>> master

}