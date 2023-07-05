package com.kyung2am.test.testproject;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

	@ResponseBody
	@RequestMapping("/test01/1")
	public String test() {
		return "<h2>테스트 프로젝트 완성</h2>"
				+ "<b>해당 프로젝트를 통해서 물젠 풀이 진행합니다.</b>";
	}
	
	
	@ResponseBody
	@RequestMapping("/test01/2")
	public Map<String, Integer> score() {
		
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("국어", 80);
		scoreMap.put("수학", 90);
		scoreMap.put("영어", 85);
		return scoreMap;
		
	}
	
}
