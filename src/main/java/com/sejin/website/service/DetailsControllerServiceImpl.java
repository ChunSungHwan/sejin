package com.sejin.website.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sejin.website.dao.ComplexAptPhotoDao;
import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.dto.ComplexApartmentPhotoDto;

@Service
public class DetailsControllerServiceImpl implements DetailsControllerService {
	@Autowired
	ComplexAptPhotoDao complexAptPhotoDao;

	@Override
	public void execute(ApartmentDto aprtmentDto, Model model) {
		try {
			ComplexApartmentPhotoDto complexAptPhotoDto = complexAptPhotoDao.selectOne(aprtmentDto);
			complexAptPhotoDto.setPhotos(complexAptPhotoDao.selectPhotoList(aprtmentDto));
	    model.addAttribute("complex", complexAptPhotoDto);
    } catch (Exception e) {
	    e.printStackTrace();
    }
	}

}
