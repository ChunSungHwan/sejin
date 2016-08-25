package com.sejin.website.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sejin.website.dao.ApartmentDao;
import com.sejin.website.dao.ComplexDao;
import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.dto.ComplexDto;
import com.sejin.website.dto.PhotoDto;

@Service
public class MainControllerServiceImpl implements MainControllerService {
	@Autowired
	ApartmentDao apartmentDao;
	@Autowired
	ComplexDao complexDao;
	
	@Override
	public void execute(Model model) {
		try {
			Map<String, Object> map = model.asMap();
			createJSONObj(model);
			if(map.get("buyType") != null) {
				List<ApartmentDto> alist = apartmentDao.selectListBuyType((String) map.get("buyType"));
				List<PhotoDto> plist = apartmentDao.selectPhotoList();
				bindPhotoData(alist, plist);
				
				model.addAttribute("list", alist);
			} else {
				List<ApartmentDto> alist = apartmentDao.selectList();
				List<PhotoDto> plist = apartmentDao.selectPhotoList();
				bindPhotoData(alist, plist);
				
				model.addAttribute("list", alist);
			}
			
    } catch (Exception e) {
	    e.printStackTrace();
    }
	}
	
	
  @SuppressWarnings({ "unchecked" })
  public void createJSONObj(Model model) throws Exception {
		List<ComplexDto> list = complexDao.selectNamePointList();
		JSONArray jsonArray = new JSONArray();
		
		for(ComplexDto complex : list) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("no", complex.getCno());
			jsonObject.put("name", complex.getName());
			jsonObject.put("latitude", complex.getClatitude());
			jsonObject.put("longitude", complex.getClongitude());
			jsonArray.add(jsonObject);
		}
		
		model.addAttribute("mapOverays", jsonArray);
	}

  	
 public void bindPhotoData(List<ApartmentDto> alist, List<PhotoDto> plist) {
	 for(ApartmentDto a : alist) {
			a.setPhotos(new ArrayList<PhotoDto>());
			for(PhotoDto p : plist) {
				if(a.getAno() == p.getAno()) {
					a.getPhotos().add(p);
				}
			}
		}
 }
  
}
