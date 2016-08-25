package com.sejin.website.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sejin.website.dao.ApartmentDao;
import com.sejin.website.dto.ApartmentDto;
import com.sejin.website.dto.PhotoDto;

@Service
public class SearchControllerServiceImpl implements SearchControllerService {
	@Autowired
	ApartmentDao apartmentDao;
	
	@Override
	public void execute(Model model) {
		Map<String,Object> map = model.asMap();
		List<ApartmentDto> alist = null;
		List<PhotoDto> plist = null;
		
		try {
			if(map.get("cno") != null) {
				alist = apartmentDao.selectListCno(Integer.parseInt((String)map.get("cno")));
				plist = apartmentDao.selectPhotoListCno(Integer.parseInt((String)map.get("cno")));
				bindPhotoData(alist, plist);
			} else {
				alist = apartmentDao.selectList();
				plist = apartmentDao.selectPhotoList();
				bindPhotoData(alist, plist);
			}
			model.addAttribute("alist", alist);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
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


	@Override
  public void execute(int cno, String buyType, Model model) {
		List<ApartmentDto> alist = null;
		List<PhotoDto> plist = null;
	  ApartmentDto apt = new ApartmentDto();
	  apt.setCno(cno);
	  apt.setBuyType(buyType);
	  try {
	  	if(cno == 0 && buyType.equals("전체")) {
	  		alist = apartmentDao.selectList();
				plist = apartmentDao.selectPhotoList();
	  	} else if(cno == 0) {
	  		alist = apartmentDao.selectListBuyType(buyType);
	  		plist = apartmentDao.selectPhotoList();
	  	} else if(buyType.equals("전체")) {
	  		alist = apartmentDao.selectListCno(cno);
	  		plist = apartmentDao.selectPhotoListCno(cno);
	  	} else {
	  		alist = apartmentDao.selectListCnoBuyType(apt);
	  		plist = apartmentDao.selectPhotoListCno(cno);
	  	}
	    bindPhotoData(alist, plist);
	    model.addAttribute("alist", alist);
    } catch (Exception e) {
	    e.printStackTrace();
    }
  }

}
