package com.eatsTime.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.member.domain.Criteria;
import com.eatsTime.member.domain.MemberVO;
import com.eatsTime.mybatis.config.MyBatisConfig;
import com.mysql.cj.Session;

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

   // 특정 회원정보 조회
   public MemberVO selectMember(Long memberId) {
      return sqlSession.selectOne("member.selectMember", memberId);
   }
   
	//	회원가입
	public void insert(MemberVO memberVO) {
		sqlSession.insert("member.insert", memberVO);
	}
	
	
//	아이디 중복검사
	public String selectIdentification(String memberIdentification) {
		return sqlSession.selectOne("memberIdentification", memberIdentification);
	}
	
//	로그인
	public Long login(String memberIdentification, String memberPw) {
		HashMap<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("memberIdentification", memberIdentification);
		loginMap.put("memberPw", memberPw);
		
		return sqlSession.selectOne("member.login", loginMap);
	}
	
	
//	관리자페이지 - 회원 전체 조회
	public List<MemberVO> selectAllMember(Criteria criteria) {
		return sqlSession.selectList("member.selectAllMember", criteria);
	}
	
//	페이징처리 전체 회원 개수 조회
	public int getTotal() {
		return sqlSession.selectOne("member.getTotal");
	}

	
//	관리자페이지 - 회원 상태 변경
	public void updateStatus(Long memberId, boolean status) {
		HashMap<String, Object> updateMap = new HashMap();
		updateMap.put("memberId", memberId);
		updateMap.put("status", status);
		sqlSession.update("member.updateStatus", updateMap);
	}
	
	

}