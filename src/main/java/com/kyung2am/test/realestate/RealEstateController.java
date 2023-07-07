package com.kyung2am.test.realestate;

import java.util.List;

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
	
	@RequestMapping("/realestate/select/idselect")
	@ResponseBody
	public RealEstate realEstateidList(@RequestParam("id") int id) {
		RealEstate realEstate = realEstateService.getRealEstate(id);
		return realEstate;
	}
	
	@RequestMapping("/realestate/select/conditionselect")
	@ResponseBody
	public List<RealEstate> realEstateConditionList(@RequestParam("rentPrice") int rentPrice){
		List<RealEstate> RentPriceRealEstateList = realEstateService.getRenPriceSelect(rentPrice);
		return RentPriceRealEstateList;
	}
	
	@RequestMapping("/realestate/select/conditionsselect")
	@ResponseBody
	public List<RealEstate> realEstateAreaPriceList(@RequestParam("area") int area, @RequestParam("price") int price) {
		List<RealEstate> AreaPriceRealEstatList = realEstateService.getAreaPriceRealEstate(area, price);
		return AreaPriceRealEstatList;
		
	}
	
}
