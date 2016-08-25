package com.sejin.website.service;

import org.springframework.ui.Model;

public interface SearchControllerService {
	void execute(Model model);
	void execute(int cno, String buyType, Model model);
}
