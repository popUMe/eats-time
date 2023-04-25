package com.eatsTime.purchase.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class PurchaseDAO {
	public SqlSession sqlSession;

	public PurchaseDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}