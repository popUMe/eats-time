package com.eatsTime.product.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.product.domain.ProductDTO;
import com.eatsTime.product.domain.ProductListDTO;
import com.eatsTime.product.domain.ProductVO;

public class ProductDAO {
   public SqlSession sqlSession;

   public ProductDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
   }
   
//   ��ǰ ��ü ��ȸ
   public List<ProductDTO> selectAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectAll", pagable);
   }
   
   public int getTotal(HashMap<String, Object> pagable) {
      return sqlSession.selectOne("product.getTotal", pagable);
   }
   
   // �����ǰ �Ѱ���
   public int getDeliveryTotal() {
      return sqlSession.selectOne("product.getDeliveryTotal");
   }
   
   //��� ��ǰ ����¡ ��ȸ
   public List<ProductDTO> selectDeliveryAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectDeliveryAll", pagable);
   }
   
   // �Ⱦ���ǰ �Ѱ���
   public int getPickUpTotal() {
      return sqlSession.selectOne("product.getPickUpTotal");
   }
   
   //�Ⱦ� ��ǰ ����¡ ��ȸ
   public List<ProductDTO> selectPickUpAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectPickUpAll", pagable);
   }
   
   // ��ǰ �󼼺���
   public ProductDTO selectProductDetail(String productId){
      return sqlSession.selectOne("product.selectProductDetail", productId);
   }
   
   // 결제페이지에서 상품이랑 회원정보 불러오는 쿼리
   public ProductDTO selectPurchase(String productId){
      return sqlSession.selectOne("product.selectProductDetail", productId);
   }
   
   // 4월 28일 김인진 부분
   // 상품 등록
   public void insert(ProductVO productVO) {
	   sqlSession.insert("product.insert", productVO);
   }
   
   // 4월 29일 김인진 부분
   // 등록 상품 리스트
	public List<ProductListDTO> selectUploadListAll(Long memberId) {
		return sqlSession.selectList("product.selectUploadListAll", memberId);
	}
	
	// 5월 1일 김인진 부분
	// 최근 게시글 번호 조회
	public Long selectCurrentSequence() {
		return sqlSession.selectOne("product.selectCurrentSequence");
	}
   
}