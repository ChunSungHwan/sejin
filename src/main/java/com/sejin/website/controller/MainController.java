package com.sejin.website.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sejin.website.service.MainControllerService;


@Controller
public class MainController {
	@Autowired
	MainControllerService mainControllerService;
	
	
  @RequestMapping("/main.do")
	public String listAll(HttpServletRequest request, Model model) {
		
		String param = request.getParameter("buyType");
		if(param != null) {
			model.addAttribute("buyType", param);
		}
		
		mainControllerService.execute(model);
		return "main";
	}
}
