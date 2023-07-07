package com.kyung2am.test.realestate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.realestate.domain.RealEstate;
import com.kyung2am.test.realestate.service.RealEstateService;

@Controller
public class RealEstateController {
	
	@Autowired
	private RealEstateService realEstateService;
	
	@RequestMapping("/realestate/select")
	@ResponseBody
	public RealEstate realEstateList(RequestParam("id") int id) {
		RealEstate realEstate = realEstateService.getRealEstate(id);
		return realEstate;
		
	}

}
