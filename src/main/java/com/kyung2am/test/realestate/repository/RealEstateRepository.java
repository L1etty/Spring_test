package com.kyung2am.test.realestate.repository;

import org.apache.ibatis.annotations.Param;

import com.kyung2am.test.realestate.domain.RealEstate;

public interface RealEstateRepository {

	public RealEstate selectIdRealEstate(@Param("id") int id);
	
}
