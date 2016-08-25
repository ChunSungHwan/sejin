package com.sejin.website.dao;

import java.util.List;

import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.dto.ComplexApartmentPhotoDto;
import com.sejin.website.dto.ComplexDto;
import com.sejin.website.dto.PhotoDto;

public interface ComplexAptPhotoDao {
	public List<ComplexDto> selectList() throws Exception;
	public ComplexApartmentPhotoDto selectOne(ApartmentDto aprtmentDto) throws Exception;
	public List<PhotoDto> selectPhotoList(ApartmentDto aprtmentDto) throws Exception;
}
