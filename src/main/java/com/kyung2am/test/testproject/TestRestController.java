package com.kyung2am.test.testproject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestRestController {

	@RequestMapping("/test02/1")
	public List<Map<String, Object>> mapTest(){
		
		List<Map<String, Object>> lists = new ArrayList<>();
		Map<String, Object> maps = new HashMap<>();
		maps.put("rate", 15);
		maps.put("director", "봉준호");
		maps.put("time", 131);
		maps.put("title", "기생충");
		lists.add(maps);
		
		maps = new HashMap<>();
		maps.put("rate", 0);
		maps.put("director", "로베르트 베니니");
		maps.put("time", 116);
		maps.put("title", "인생은 아름다워");
		lists.add(maps);

		maps = new HashMap<>();
		maps.put("rate", 12);
		maps.put("director", "크리스토퍼 놀란");
		maps.put("time", 147);
		maps.put("title", "인셉션");
		lists.add(maps);
		
		maps = new HashMap<>();
		maps.put("rate", 19);
		maps.put("director", "윤종빈");
		maps.put("time", 133);
		maps.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
		lists.add(maps);
		
		maps = new HashMap<>();
		maps.put("rate", 15);
		maps.put("director", "프란시스 로랜스");
		maps.put("time", 137);
		maps.put("title", "헝거게임");
		lists.add(maps);
		
		return lists;	
	}

	@RequestMapping("/test02/2")
	public List<Table> classTest(){
		List<Table> lists = new ArrayList<>();
		Table table = new Table("안녕하세요 가입인사 드립니다.", "hangulu", "안녕하세요. 가입했어요. 앞으로 잘 부탁 드립니다. 활동 열심히 하겠습니다");
		lists.add(table);
		
		table = new Table("헐 대박", "bada", "오늘 목요일이 있어... 금요일인줄");
		lists.add(table);

		table = new Table("오늘 데이트 한 이야기 해드릴게요.", "dulu", "....");
		lists.add(table);
		
		return lists;
		
	}

	@RequestMapping("/test02/3")
	public ResponseEntity<Table> Entity(){
		Table table = new Table("안녕하세요 가입인사 드립니다.", "hangulu", "안녕하세요. 가입했어요. 앞으로 잘 부탁 드립니다. 활동 열심히 하겠습니다");
		
		ResponseEntity<Table> entity = new ResponseEntity<>(table, HttpStatus.INTERNAL_SERVER_ERROR);
		
		return entity;
	}
	
}
