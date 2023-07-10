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
@RequestMapping("/realestate")
public class RealEstateController {
	
	@Autowired
	private RealEstateService realEstateService;
	
	@RequestMapping("/select/idselect")
	@ResponseBody
	public RealEstate realEstateidList(@RequestParam("id") int id) {
		RealEstate realEstate = realEstateService.getRealEstate(id);
		return realEstate;
	}
	
	@RequestMapping("/select/conditionselect")
	@ResponseBody
	public List<RealEstate> realEstateConditionList(@RequestParam("rentPrice") int rentPrice){
		List<RealEstate> RentPriceRealEstateList = realEstateService.getRenPriceSelect(rentPrice);
		return RentPriceRealEstateList;
	}
	
	@RequestMapping("/select/conditionsselect")
	@ResponseBody
	public List<RealEstate> realEstateAreaPriceList(@RequestParam("area") int area, @RequestParam("price") int price) {
		List<RealEstate> AreaPriceRealEstatList = realEstateService.getAreaPriceRealEstate(area, price);
		return AreaPriceRealEstatList;
		
	}
	
	@RequestMapping("/insert/test01")
	@ResponseBody
	public String objectInsertRealEstate() {
		RealEstate realEstate = new RealEstate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지용 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setPrice(100000);
		int count = realEstateService.insertByObjectRealEstate(realEstate);
		return "성공행 개수 : " + count;
	}

	@RequestMapping("/insert/test02")
	@ResponseBody
	public String filedInsertRealEstate(@RequestParam("realtorId") int realtorId) {
		int count = realEstateService.insertByFieldRealEstate(realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		return "필드입력성공수" + count;
	}
	
	@RequestMapping("/update/test01")
	@ResponseBody
	public String filedUpdateRealEstate() {
		int count = realEstateService.updateByFieldRealEstate(24, "전세", 70000);
		return "업데이트 성공 행 : " + count;
	}
	
}
