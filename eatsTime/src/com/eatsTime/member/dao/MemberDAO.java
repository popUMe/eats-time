package com.eatsTime.member.dao;

import org.apache.ibatis.session.SqlSession;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class MemberDAO {
	public SqlSession sqlSession;

	public MemberDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

}