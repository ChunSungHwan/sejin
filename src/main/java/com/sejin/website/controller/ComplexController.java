package com.sejin.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sejin.website.service.ComplexListService;
import com.sejin.website.service.Service;

@Controller
public class ComplexController {
	Service service;
	
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("list()");
		service = new ComplexListService();
		service.execute(model);
		
		return "list";
	}
	
}
