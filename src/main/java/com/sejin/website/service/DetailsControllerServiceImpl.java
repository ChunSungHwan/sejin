package com.sejin.website.service;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sejin.website.dao.ComplexAptPhotoDao;
import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.dto.ComplexApartmentPhotoDto;

@Service
public class DetailsControllerServiceImpl implements DetailsControllerService {
	@Autowired
	ComplexAptPhotoDao complexAptPhotoDao;

	@Override
	public void execute(ApartmentDto aprtmentDto, Model model) {
		try {
			ComplexApartmentPhotoDto complexAptPhotoDto = complexAptPhotoDao.selectOne(aprtmentDto);
			createJSONObj(complexAptPhotoDto.getAlatitude(), complexAptPhotoDto.getAlongitude(), model);
			complexAptPhotoDto.setPhotos(complexAptPhotoDao.selectPhotoList(aprtmentDto));
	    model.addAttribute("complex", complexAptPhotoDto);
    } catch (Exception e) {
	    e.printStackTrace();
    }
	}
	
  @SuppressWarnings({ "unchecked" })
  public void createJSONObj(String latitude, String longitude, Model model) throws Exception {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("latitude", latitude);
		jsonObject.put("longitude", longitude);
		
		model.addAttribute("latlong", jsonObject);
	}

}
