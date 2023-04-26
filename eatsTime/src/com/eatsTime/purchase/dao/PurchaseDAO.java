package com.eatsTime.purchase.dao;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.purchase.domain.PurchaseVO;

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
   
   
   // 구매정보 인설트
   public void insertPurchase(PurchaseVO purchaseVO) {
      sqlSession.insert("purchase.insertPurchase", purchaseVO);
   }
  
}