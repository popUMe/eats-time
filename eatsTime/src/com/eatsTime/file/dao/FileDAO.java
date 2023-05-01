package com.eatsTime.file.dao;

import org.apache.ibatis.session.SqlSession;

import com.eatsTime.file.domain.FileVO;
import com.eatsTime.mybatis.config.MyBatisConfig;

public class FileDAO {
	public SqlSession sqlSession;

	public FileDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	파일 추가
	public void insert(FileVO fileVO) {
		sqlSession.insert("file.insert", fileVO);
	}

}