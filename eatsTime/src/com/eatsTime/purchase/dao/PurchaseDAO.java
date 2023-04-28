package com.eatsTime.purchase.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.purchase.domain.PurchaseListDTO;
import com.eatsTime.purchase.domain.PurchaseVO;

public class PurchaseDAO {
   public SqlSession sqlSession;

   public PurchaseDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

   // 구매정보 인설트
   public void insertPurchase(PurchaseVO purchaseVO) {
      sqlSession.insert("purchase.insertPurchase", purchaseVO);
   }
   
   // 구매내역 조회
	public List<PurchaseListDTO> selectAll() {
		return sqlSession.selectList("purchase.selectAll");
	}
	
	// 구매내역 상세 조회
	public PurchaseListDTO selectDetail(Long purId) {
		return sqlSession.selectOne("purchase.selectDetail", purId);
	} 
  
}