package com.kyung2am.test.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.store.domain.Store;
import com.kyung2am.test.store.service.StoreService;

@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@ResponseBody
	@RequestMapping("/store")
	public List<Store> storeList() {
		List<Store> storelist = storeService.getStoreList();
		return storelist;
	}
	
}
