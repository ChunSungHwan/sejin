package com.sejin.website.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sejin.website.dao.ApartmentDao;

@Service
public class HomeControllerServiceImpl implements HomeControllerService {
	@Autowired
	ApartmentDao apartmentDao;
	
	@Override
	public void execute(Model model) {
		try {
			Map<String, Object> map = model.asMap();
			if(map.get("buyType") != null) {
				model.addAttribute("list", apartmentDao.selectListBuyType((String) map.get("buyType")));
			} else {
				model.addAttribute("list", apartmentDao.selectList());
			}
			
    } catch (Exception e) {
	    e.printStackTrace();
    }
	}

}
