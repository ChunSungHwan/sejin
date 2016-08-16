package com.sejin.website.service;

import java.util.List;

import org.springframework.ui.Model;

import com.sejin.website.dao.ComplexDao;
import com.sejin.website.dto.ComplexDto;

public class ComplexListService implements Service{
		@Override
		public void execute(Model model) {
			ComplexDao complexDao = new ComplexDao();
			List<ComplexDto> complexList;

			try {
	      complexList = complexDao.selectList();
	      model.addAttribute("list", complexList);
      } catch (Exception e) {
	      e.printStackTrace();
      }
			
		}
}
