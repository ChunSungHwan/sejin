package com.sejin.website.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.dto.ComplexApartmentPhotoDto;
import com.sejin.website.dto.ComplexDto;
import com.sejin.website.dto.PhotoDto;


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

	@Override
  public ComplexApartmentPhotoDto selectOne(ApartmentDto aprtmentDto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("com.sejin.website.dao.ComplexAptPhotoDao.selectOne", aprtmentDto);
		} finally {
			sqlSession.close();
		}
		
  }

	@Override
  public List<PhotoDto> selectPhotoList(ApartmentDto aprtmentDto) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("com.sejin.website.dao.ComplexAptPhotoDao.selectPhotoList", aprtmentDto);
		} finally {
			sqlSession.close();
		}
  }

}
