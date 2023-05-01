package com.eatsTime.inquiryboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.answerboard.domain.AnswerBoardDTO;
import com.eatsTime.inquiryboard.domain.InquiryBoardDTO;
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class InquiryBoardDAO {
	public SqlSession sqlSession;

	public InquiryBoardDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	public InquiryBoardVO select(Long inqbId) {
		return sqlSession.selectOne("inquiryboard.select", inqbId);
	}
	public AnswerBoardDTO selectanswer(Long inqbId) {
		return sqlSession.selectOne("inquiryboard.answer", inqbId);
	}
//	게시글 전체 조회
	public List<InquiryBoardDTO> selectAll(HashMap<String, Object> pagable){
		return sqlSession.selectList("inquiryboard.selectAll", pagable);
	}
	
//	전체 게시글 개수 조회
	public int getTotal() {
		return sqlSession.selectOne("inquiryboard.getTotal");
	}
	
//	게시글 추가
	public void insert(InquiryBoardVO boardVO) {
		System.out.println("InquiryBoardDao 들어옴");
		sqlSession.insert("inquiryboard.insert", boardVO);
	}
	
	
//	게시글 답변 상태
	public String complete() {
		return sqlSession.selectOne("inquiryboard.complete");
	}
	
////	게시글 조회
//	public BoardDTO select(Long boardId) {
//		return sqlSession.selectOne("board.select", boardId);
//	}
//	
//	게시글 수정
	public void update(InquiryBoardVO boardVO) {
		sqlSession.update("inquiryboard.update", boardVO);
	}
	
//	게시글 삭제
	public void delete(Long inqbId) {
		sqlSession.delete("inquiryboard.delete", inqbId);
	}
	
//	게시글 답변 조회

	public InquiryBoardDTO answer(Long inqbId) {
		return sqlSession.selectOne("inquiryboard.answer", inqbId);

	}

}