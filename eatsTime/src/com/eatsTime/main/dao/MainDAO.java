package com.eatsTime.main.dao;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.eatsTime.main.domain.MainDTO;
import com.eatsTime.main.domain.Search;
import com.eatsTime.mybatis.config.MyBatisConfig;


public class MainDAO {
	
	private SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
//  상품 추가
  public List<MainDTO> selectAll1(HashMap<String, Object> pagable){
     return sqlSession.selectList("main.selectAll", pagable);
  }

// 전체 상품 개수 조회
	public int getTotal(Search search) {
		return sqlSession.selectOne("main.getTotal", search);
	}





	

}