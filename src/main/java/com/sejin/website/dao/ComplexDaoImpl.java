package com.sejin.website.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sejin.website.dto.ComplexDto;

@Repository
public class ComplexDaoImpl implements ComplexDao {
	@Autowired
	SqlSessionFactory sqlSessionFactory;

	@Override
	public List<ComplexDto> selectNamePointList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("com.sejin.website.dao.ComplexDao.selectNamePointList");
		} finally {
			sqlSession.close();
		}
	}

}
