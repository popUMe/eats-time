package com.eatsTime.main.dao;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.eatsTime.main.domain.MainDTO;
import com.eatsTime.main.domain.Search;
import com.eatsTime.mybatis.config.MyBatisConfig;


public class MainDAO {
	
	private static SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
//  상품 추가
  public static List<MainDTO> selectAll1(String keyword){
     return sqlSession.selectList("main.selectAll", keyword);
  }

// 전체 상품 개수 조회
	public int getTotal(Search search) {
		return sqlSession.selectOne("main.getTotal", search);
	}


	public static Collection<MainDTO> selectAll11(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}





	

}