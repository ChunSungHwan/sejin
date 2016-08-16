package com.sejin.website.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sejin.website.dao.ComplexDao;
import com.sejin.website.dto.ComplexDto;

@Service
public class ComplexListServiceImpl implements ComplexListService{
	@Autowired	
	ComplexDao complexDao;
	
	public void setComplexDao(ComplexDao complexDao) {
	  this.complexDao = complexDao;
  }
	
		@Override
		public void execute(Model model) {
			List<ComplexDto> complexList;

			try {
	      complexList = complexDao.selectList();
	      model.addAttribute("list", complexList);
      } catch (Exception e) {
	      e.printStackTrace();
      }
			
		}
}
