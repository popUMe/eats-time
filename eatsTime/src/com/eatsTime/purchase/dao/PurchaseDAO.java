package com.eatsTime.purchase.dao;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.member.domain.PurchaseListDTO;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class PurchaseDAO {
	public SqlSession sqlSession;

	public PurchaseDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	구매내역 조회
//	public PurchaseListDTO select(Long memberId) {
//		return sqlSession.selectOne("purchase.select", memberId);
//	}
//
}