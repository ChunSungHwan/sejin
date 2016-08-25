package com.sejin.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.service.DetailsControllerService;



@Controller
public class DetailsController {
	@Autowired
	DetailsControllerService detailsControllerService;
	
	
	@RequestMapping("/search/details.do")
	public String listOne(ApartmentDto aprtmentDto, Model model) {
		
		detailsControllerService.execute(aprtmentDto, model);
		
		return "details/details";
	}
	
}
