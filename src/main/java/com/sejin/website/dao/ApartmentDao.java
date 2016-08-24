package com.sejin.website.dao;

import java.util.List;

import com.sejin.website.dto.ApartmentDto;


public interface ApartmentDao {
	public List<ApartmentDto> selectList() throws Exception;
	public List<ApartmentDto> selectListBuyType(String buyType) throws Exception;
}
