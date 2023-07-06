package com.kyung2am.test.testproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test02Controller {
	
	@RequestMapping("/test/test02")
	public String listTest() {
		return "test/test02.jsp";
	}

}
