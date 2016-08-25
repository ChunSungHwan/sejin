package com.sejin.website.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sejin.website.service.SearchControllerService;


@Controller
public class SearchController {
	@Autowired
	SearchControllerService searchControllerService;
	
	@RequestMapping("/search/search.do")
	public String list(HttpServletRequest request, Model model) {
		
		String paramCno = request.getParameter("cno");
		if(paramCno != null) {
			model.addAttribute("cno", paramCno);
		}
		searchControllerService.execute(model);
		return "search/search";
	}
	
	@RequestMapping(value="/search/search.do",method=RequestMethod.POST)
	public String listParamCnoBuyType(HttpServletRequest request, Model model) {
		searchControllerService.execute(Integer.parseInt((String)request.getParameter("cno")), request.getParameter("buyType"), model);
		return "search/search";
	}
}
