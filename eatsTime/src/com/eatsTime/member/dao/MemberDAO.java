package com.eatsTime.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.member.domain.MemberVO;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class MemberDAO {
	public SqlSession sqlSession;

	public MemberDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 마이페이지 불러오기
	public List<MemberVO> selectAll(MemberVO memberVO) {
		return sqlSession.selectList("member.selectAll", memberVO);
	}
	
	// 마이페이지 수정
	public void update(MemberVO memberVO) {
		sqlSession.update("member.update", memberVO);
	}
	
	// 회원탈퇴
	public void delete(Long memberId) {
		sqlSession.delete("member.delete", memberId);
	}

}