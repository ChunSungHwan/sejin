package com.sejin.website.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sejin.website.dto.ComplexDto;


@Repository
public class ComplexAptPhtoDaoImpl implements ComplexAptPhotoDao{
	@Autowired
	SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
	  this.sqlSessionFactory = sqlSessionFactory;
  }
	
	@Override
  public List<ComplexDto> selectList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("com.sejin.website.dao.ComplexAptPhotoDao.selectList");
		} finally {
			sqlSession.close();
		}
  }

}
