package com.eatsTime.sale.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class SaleDAO {
	public SqlSession sqlSession;

	public SaleDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}