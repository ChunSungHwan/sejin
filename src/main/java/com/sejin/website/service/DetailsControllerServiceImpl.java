package com.sejin.website.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sejin.website.dao.ComplexAptPhotoDao;
import com.sejin.website.dto.ApartmentDto;

@Service
public class DetailsControllerServiceImpl implements DetailsControllerService {
	@Autowired
	ComplexAptPhotoDao complexAptPhotoDao;

	@Override
	public void execute(ApartmentDto aprtmentDto, Model model) {
		try {
	    model.addAttribute("complex", complexAptPhotoDao.selectOne(aprtmentDto));
    } catch (Exception e) {
	    e.printStackTrace();
    }
	}

}
