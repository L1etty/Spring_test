package com.kyung2am.test.jstl.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kyung2am.test.jstl.domain.WeatherHistory;
import com.kyung2am.test.jstl.repository.JSTLRepository;

@Service
public class JSTLService {

	@Autowired
	private JSTLRepository jstlRepository;
	
	public List<WeatherHistory> getWeatherHistory() {
		List<WeatherHistory> history = jstlRepository.selectWeatherHistory();
		return history;
	}
	
	public int addWeatherHistory(Date date, String weather, double temperatures, double precipitation, String microDust, double windSpeed) {
		int count = jstlRepository.insertWeatherHistory(date, weather, temperatures, precipitation, microDust, windSpeed);
		return count;
	}
	
	public int addWeatherHistoryByobject(WeatherHistory weather) {
		int count = jstlRepository.insertWeatherHistoryByObject(weather);
		return count;
	}
	
}
