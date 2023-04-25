package com.eatsTime.product.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.product.domain.ProductVO;

public class ProductDAO {
	public SqlSession sqlSession;

	public ProductDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public void insert(ProductVO productVO) {
	    sqlSession.insert("product.insert", productVO);
	}
	
}