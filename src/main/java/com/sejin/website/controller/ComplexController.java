package com.sejin.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sejin.website.service.ComplexListService;

@Controller
public class ComplexController {
	//Service service;
	@Autowired
	ComplexListService service;
	
	public void setService(ComplexListService service) {
	  this.service = service;
  }
	
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("list()");
		service.execute(model);
		
		return "list";
	}
	
}
