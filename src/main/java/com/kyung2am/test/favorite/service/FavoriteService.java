package com.kyung2am.test.favorite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kyung2am.test.favorite.domain.Favorite;
import com.kyung2am.test.favorite.repository.FavoriteRepository;

@Service
public class FavoriteService {
	
	@Autowired
	private FavoriteRepository favoriteRepository;

	public List<Favorite> getFavoriteList(){
		
		List<Favorite> list = favoriteRepository.selectFavoriteList();
		
		return list;
	}
	
	public int addFavorite(String name, String url) {
		
		int count = favoriteRepository.insertFavorite(name, url);
		
		
		return count;
	}
	
}
