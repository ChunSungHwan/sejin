package com.sejin.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroduceController {

	@RequestMapping("/introduce/introduce.do")
	public String introduce() {
		return "introduce/introduce";
	}
}
