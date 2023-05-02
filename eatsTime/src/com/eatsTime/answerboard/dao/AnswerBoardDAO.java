package com.eatsTime.answerboard.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.answerboard.domain.AnswerBoardDTO;
import com.eatsTime.answerboard.domain.AnswerBoardVO;
import com.eatsTime.inquiryboard.domain.InquiryBoardDTO;
import com.eatsTime.inquiryboard.domain.InquiryBoardVO;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class AnswerBoardDAO {
	public SqlSession sqlSession;

	public AnswerBoardDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

//	전체 게시글 개수 조회
	public int getTotal() {
		return sqlSession.selectOne("answerboard.getTotal");
	}
	
//	게시글 전체 조회
	public List<AnswerBoardDTO> selectAll(HashMap<String, Object> pagable){
		System.out.println("boardDao 들어옴");
		 return sqlSession.selectList("answerboard.selectAll", pagable);
	}
	
//	어드민 게시글 전체 조회
	public List<InquiryBoardDTO> adminSelectAll(HashMap<String, Object> pagable){
		System.out.println("어드민 boardDao 들어옴");
		 return sqlSession.selectList("answerboard.adminSelectAll", pagable);
	}
	
//	게시글 상세 조회
	public AnswerBoardDTO select(Long inqbId) {
		System.out.println("boardDAO select 문 들어옴");
		return sqlSession.selectOne("answerboard.select", inqbId);
	}
	

//	게시글 상세 조회 ansb
	public AnswerBoardDTO selectqs(Long ansbId) {
		System.out.println("boardDAO selectqs 문 들어옴");
		return sqlSession.selectOne("answerboard.selectqs", ansbId);
	}
	
//	답변 작성
	public void insert(AnswerBoardVO boardVO) {
		System.out.println("AnswerBoardDao 들어옴");
		sqlSession.insert("answerboard.insert", boardVO);
	}
	
//	답변 조회
	public AnswerBoardDTO selectAnswer(Long ansbId) {
		System.out.println("boardDAO select 문 들어옴");
		return sqlSession.selectOne("answerboard.selectAnswer", ansbId);
	}

//	전체 게시글 리스트에서 게시글 삭제
	public void delete(Long ansbId) {
		System.out.println("AnswerBoardDao 들어옴");
		sqlSession.delete("answerboard.delete", ansbId);
	}

//	답변 여부
	public void updateyesno(Long inqbId) {
		sqlSession.update("answerboard.selectyesno", inqbId);

	}
	
//	답변 여부
	public void deleteanswer(Long ansbId) {
		sqlSession.update("answerboard.deleteanswer", ansbId);
	}
	
//관리자 답변 수정
	public void updateanswer(AnswerBoardDTO boardDTO) {
		sqlSession.update("answerboard.updateanswer", boardDTO);
	}
	
	
}