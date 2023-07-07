package com.kyung2am.test.realestate.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kyung2am.test.realestate.domain.RealEstate;

public interface RealEstateRepository {

	public RealEstate selectIdRealEstate(@Param("id") int id);
	
	public List<RealEstate> selectRentPriceRealEstate(@Param("rentPrice") int rentPrice);
	
	public List<RealEstate> selectAreaPriceRealEstate(@Param("area") int area, @Param("price") int price);
	
}
