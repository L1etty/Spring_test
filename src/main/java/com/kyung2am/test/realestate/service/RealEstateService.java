package com.kyung2am.test.realestate.service;

import org.apache.ibatis.annotations.Param;
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
	
}
