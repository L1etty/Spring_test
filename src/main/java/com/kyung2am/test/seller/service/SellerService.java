package com.kyung2am.test.seller.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kyung2am.test.seller.domain.Seller;
import com.kyung2am.test.seller.repository.SellerRepository;

@Service
public class SellerService {
	
	@Autowired
	private SellerRepository sellerRepository;
	
	public int addSeller(String nickname, String profileImage, double temperature) {
		int count = sellerRepository.insertSeller(nickname, profileImage, temperature);
		return count;
	}
	
	public Seller checkSellerInfo(int id) {
		Seller seller = sellerRepository.selectIdSeller(id);
		return seller;
	}
	
	public Seller checkSellerInfo() {
		Seller seller = sellerRepository.selectLastSeller();
		return seller;
	}
	
}
