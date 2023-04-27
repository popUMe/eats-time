package com.eatsTime.main.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.main.domain.MainDTO;
import com.eatsTime.main.domain.Search;
import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.product.domain.ProductDTO;


public class MainDAO {
	
	private SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<MainDTO> selectMainList() {
		List<MainDTO> list = sqlSession.selectList("MainMapper.selectMainList");
		return list;
	}
	
//  상품 전체 조회
  public List<ProductDTO> selectAll1(HashMap<String, Object> pagable){
     return sqlSession.selectList("product.selectAll", pagable);
  }

	public void insertMain(MainDTO mainDto) {
		sqlSession.insert("MainMapper.insertMain", mainDto);
	}

	public MainDTO selectMainById(Long productId) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("productId", productId);
		MainDTO dto = sqlSession.selectOne("MainMapper.selectMainById", paramMap);
		return dto;
	}

	public void updateMain(MainDTO mainDto) {
		sqlSession.update("MainMapper.updateMain", mainDto);
	}

	public void deleteMain(Long productId) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("productId", productId);
		sqlSession.delete("MainMapper.deleteMain", paramMap);
	}

	public int getTotal(Search search) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Object selectAll(HashMap<String, Object> pagable) {
		// TODO Auto-generated method stub
		return null;
	}
}