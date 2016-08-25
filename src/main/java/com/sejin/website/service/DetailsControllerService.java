package com.sejin.website.service;

import org.springframework.ui.Model;

import com.sejin.website.dto.ApartmentDto;

public interface DetailsControllerService {
	void execute(ApartmentDto aprtmentDto, Model model);
}
