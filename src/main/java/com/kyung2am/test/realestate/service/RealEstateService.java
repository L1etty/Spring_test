package com.kyung2am.test.realestate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kyung2am.test.realestate.domain.RealEstate;
import com.kyung2am.test.realestate.repository.RealEstateRepository;

@Service
public class RealEstateService {

	@Autowired
	private RealEstateRepository estateRepository;
	
	public RealEstate getRealEstate(int id) {
		RealEstate realEstate = estateRepository.selectIdRealEstate(id);
		return realEstate;
	}
	
	public List<RealEstate> getRenPriceSelect(int rentPrice){
		List<RealEstate> RentPriceRealEstateList = estateRepository.selectRentPriceRealEstate(rentPrice);
		return RentPriceRealEstateList;
	}
	
	public List<RealEstate> getAreaPriceRealEstate(int area, int price){
		List<RealEstate> AreaPriceRealEstatList = estateRepository.selectAreaPriceRealEstate(area, price);
		return AreaPriceRealEstatList;
	}
	
}
