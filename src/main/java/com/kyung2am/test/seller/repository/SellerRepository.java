package com.kyung2am.test.seller.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kyung2am.test.seller.domain.Seller;

@Repository
public interface SellerRepository {

	public int insertSeller(@Param("nickname") String nickname, @Param("profileImage") String profileImage, @Param("temperature") double temperature);
	
	public Seller selectLastSeller();
	public Seller selectIdSeller(@Param("id") int id);
	
}
