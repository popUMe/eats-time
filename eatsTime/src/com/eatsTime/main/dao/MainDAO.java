package com.eatsTime.main.dao;


import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.main.domain.Criteria;
import com.eatsTime.main.domain.MainDTO;
import com.eatsTime.mybatis.config.MyBatisConfig;
import com.eatsTime.product.domain.ProductDTO;
import com.eatsTime.product.domain.ProductListDTO;
import com.eatsTime.product.domain.ProductVO;


@SuppressWarnings("unused")
public class MainDAO {
	
	private static SqlSession sqlSession;
	
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	public void insert(MainDTO mainDTO) {
		   sqlSession.insert("product.insert", mainDTO);
	   }
	
	public int getTotal() {
		return 0;
	}
	public Object selectAllAdmin(Criteria criteria) {
		return null;
	}
	 public List<ProductDTO> selectPickUpAll(HashMap<String, Object> pagable){
	      return sqlSession.selectList("product.selectPickUpAll", pagable);
	   }
	  public ProductDTO selectProductDetail(String productId){
	      return sqlSession.selectOne("product.selectProductDetail", productId);
	   }
	  public List<ProductListDTO> selectUploadListAll() {
			return sqlSession.selectList("product.selectUploadListAll");
		}
	  public List<ProductDTO> selectAll(HashMap<String, Object> pagable){
	      return sqlSession.selectList("product.selectAll", pagable);
	   }
	public static int getTotal(HashMap<String, Object> pagable) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	   public List<ProductDTO> selectAll1(HashMap<String, Object> pagable){
	      return sqlSession.selectList("product.selectAll", pagable);
	   }
	   
	   public int getTotal1(HashMap<String, Object> pagable) {
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
	   public List<ProductDTO> selectPickUpAll1(HashMap<String, Object> pagable){
	      return sqlSession.selectList("product.selectPickUpAll", pagable);
	   }
	   
	   // ��ǰ �󼼺���
	   public ProductDTO selectProductDetail1(String productId){
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
		public List<ProductListDTO> selectUploadListAll1() {
			return sqlSession.selectList("product.selectUploadListAll");
		}




	

}