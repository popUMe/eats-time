package com.eatsTime.product.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class ProductDAO {
	public SqlSession sqlSession;

	public ProductDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}