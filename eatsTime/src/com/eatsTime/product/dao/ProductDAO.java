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
   
//   »óÇ° ÀüÃ¼ Á¶È¸
   public List<ProductDTO> selectAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectAll", pagable);
   }
   
   
   // »óÇ° ÀüÃ¼ °³¼ö
   
   public int getTotal(HashMap<String, Object> pagable) {
      return sqlSession.selectOne("product.getTotal", pagable);
   }
   
   // ¹è¼ÛÁ¦Ç° ÃÑ°³¼ö
   public int getDeliveryTotal() {
      return sqlSession.selectOne("product.getDeliveryTotal");
   }
   
   //¹è¼Û Á¦Ç° ÆäÀÌÂ¡ Á¶È¸
   public List<ProductDTO> selectDeliveryAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectDeliveryAll", pagable);
   }
   
   // ÇÈ¾÷Á¦Ç° ÃÑ°³¼ö
   public int getPickUpTotal() {
      return sqlSession.selectOne("product.getPickUpTotal");
   }
   
   //ÇÈ¾÷ Á¦Ç° ÆäÀÌÂ¡ Á¶È¸
   public List<ProductDTO> selectPickUpAll(HashMap<String, Object> pagable){
      return sqlSession.selectList("product.selectPickUpAll", pagable);
   }
   
   // »óÇ° »ó¼¼º¸±â
   public ProductDTO selectProductDetail(String productId){
      return sqlSession.selectOne("product.selectProductDetail", productId);
   }
   
   // ê²°ì œí˜ì´ì§€ì—ì„œ ìƒí’ˆì´ë‘ íšŒì›ì •ë³´ ë¶ˆëŸ¬ì˜¤ëŠ” ì¿¼ë¦¬
   public ProductDTO selectPurchase(String productId){
      return sqlSession.selectOne("product.selectProductDetail", productId);
   }
   
}