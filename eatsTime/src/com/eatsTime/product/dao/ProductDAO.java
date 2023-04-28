package com.eatsTime.product.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.product.domain.ProductDTO;
import com.eatsTime.product.domain.ProductVO;

public class ProductDAO {
   public SqlSession sqlSession;

   public ProductDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
   }
   
//   상품 전체 조회
   public List<ProductDTO> selectAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectAll", pagable);
   }
   
   
   // 상품 전체 개수
   
   public int getTotal(HashMap<String, Object> pagable) {
      return sqlSession.selectOne("product.getTotal", pagable);
   }
   
   // 배송제품 총개수
   public int getDeliveryTotal() {
      return sqlSession.selectOne("product.getDeliveryTotal");
   }
   
   //배송 제품 페이징 조회
   public List<ProductDTO> selectDeliveryAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectDeliveryAll", pagable);
   }
   
   // 픽업제품 총개수
   public int getPickUpTotal() {
      return sqlSession.selectOne("product.getPickUpTotal");
   }
   
   //픽업 제품 페이징 조회
   public List<ProductDTO> selectPickUpAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectPickUpAll", pagable);
   }
   
   // 상품 상세보기
   public ProductDTO selectProductDetail(String productId){
      return sqlSession.selectOne("product.selectProductDetail", productId);
   }
   
   // 寃곗젣�럹�씠吏��뿉�꽌 �긽�뭹�씠�옉 �쉶�썝�젙蹂� 遺덈윭�삤�뒗 荑쇰━
   public ProductDTO selectPurchase(String productId){
      return sqlSession.selectOne("product.selectProductDetail", productId);
   }
   
}