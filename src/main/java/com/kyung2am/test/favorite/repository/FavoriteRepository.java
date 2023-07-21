package com.kyung2am.test.favorite.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kyung2am.test.favorite.domain.Favorite;

@Repository
public interface FavoriteRepository {

	public List<Favorite> selectFavoriteList();
	
	public int insertFavorite(
			@Param("name") String name
			,@Param("url") String url
			);
	
	public int selecturlDuplicate(
			@Param("url") String url
			);
	
	public int deleteFavorite(@Param("id") int id);
}
