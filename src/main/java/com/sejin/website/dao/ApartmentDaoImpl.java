package com.sejin.website.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.dto.PhotoDto;

@Repository
public class ApartmentDaoImpl implements ApartmentDao {
	@Autowired
	SqlSessionFactory sqlSessionFactory;
	
	@Override
	public List<ApartmentDto> selectList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("com.sejin.website.dao.ApartmentDao.selectList");
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public List<ApartmentDto> selectListBuyType(String buyType) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("com.sejin.website.dao.ApartmentDao.selectListBuyType", buyType);
		} finally {
			sqlSession.close();
		}
	}

	@Override
  public List<PhotoDto> selectPhotoList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("com.sejin.website.dao.ApartmentDao.selectPhotoList");
		} finally {
			sqlSession.close();
		}
  }

}
