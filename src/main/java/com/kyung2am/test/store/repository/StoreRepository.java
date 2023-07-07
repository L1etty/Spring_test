package com.kyung2am.test.store.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.kyung2am.test.store.domain.Store;

@Repository
public interface StoreRepository {
	public List<Store> selectStoreList();
}
