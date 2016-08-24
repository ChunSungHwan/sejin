package com.sejin.website.dao;

import java.util.List;

import com.sejin.website.dto.ComplexDto;


public interface ComplexDao {
	public List<ComplexDto> selectNamePointList() throws Exception;
}
