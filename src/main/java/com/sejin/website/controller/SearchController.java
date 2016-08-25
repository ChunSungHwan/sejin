package com.sejin.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SearchController {
	@RequestMapping("/search/map.do")
	public String mapList(Model model) {
		
		
		
		return "search/map";
	}
}
