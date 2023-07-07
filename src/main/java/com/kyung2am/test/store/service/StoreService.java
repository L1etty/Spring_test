package com.kyung2am.test.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kyung2am.test.store.domain.Store;
import com.kyung2am.test.store.repository.StoreRepository;

@Service
public class StoreService {

	@Autowired
	private StoreRepository storeRepository;
		
	public List<Store> getStoreList() {
		
		List<Store> storeList = storeRepository.selectStoreList();
		
		return storeList;
	}
	
}
