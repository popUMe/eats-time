package com.eatsTime.sale.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.product.domain.ProductVO;
import com.eatsTime.sale.domain.SaleVO;

public class SaleDAO {
	public SqlSession sqlSession;

	public SaleDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(SaleVO saleVO) {
		sqlSession.insert("sale.insert", saleVO);
	}
	
	public ProductVO selectProduct(Long productId) {
		return sqlSession.selectOne("sale.selectProduct", productId);
	}
	
	public List<SaleVO> selectList(Long memberId) {
		return sqlSession.selectList("sale.selectList", memberId);
	}

}