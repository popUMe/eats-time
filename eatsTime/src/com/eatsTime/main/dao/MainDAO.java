package com.eatsTime.main.dao;


import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.main.domain.Criteria;
import com.eatsTime.main.domain.MainDTO;
import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.product.domain.ProductDTO;
import com.eatsTime.product.domain.ProductVO;


public class MainDAO {
	
	private static SqlSession sqlSession;
	
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	 public ProductDTO selectProductDetail(String productId){
	      return sqlSession.selectOne("product.selectProductDetail", productId);
	   }
	public int getTotal() {
		return 0;
	}
	public Object selectAllAdmin(Criteria criteria) {
		return null;
	}
	 





	

}