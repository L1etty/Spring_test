package com.kyung2am.test.jstl.repository;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kyung2am.test.jstl.domain.WeatherHistory;

@Repository
public interface JSTLRepository {
	public List<WeatherHistory> selectWeatherHistory();
	public int insertWeatherHistory(
			@Param("date") Date date
			, @Param("weather") String weather
			, @Param("temperatures") double temperatures
			, @Param("precipitation") double precipitation
			, @Param("microDust") String microDust
			, @Param("windSpeed") double windSpeed
			);
}
