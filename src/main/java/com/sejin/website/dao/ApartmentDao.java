package com.sejin.website.dao;

import java.util.List;

import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.dto.PhotoDto;


public interface ApartmentDao {
	public List<ApartmentDto> selectList() throws Exception;
	public List<ApartmentDto> selectListBuyType(String buyType) throws Exception;
	public List<PhotoDto> selectPhotoList() throws Exception;
	public List<ApartmentDto> selectListCno(int cno) throws Exception;
	public List<PhotoDto> selectPhotoListCno(int cno) throws Exception;
	public List<ApartmentDto> selectListCnoBuyType(ApartmentDto apartmentDto) throws Exception;
}
